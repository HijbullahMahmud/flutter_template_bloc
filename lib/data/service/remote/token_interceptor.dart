import 'package:dio/dio.dart';
import 'package:flutter_bloc_template/data/service/remote/token_manager.dart';

class TokenInterceptor extends Interceptor {
  final TokenManager _tokenManager;
  final Future<bool> Function()? _onTokenRefresh;

  TokenInterceptor(
    this._tokenManager, {
    Future<bool> Function()? onTokenRefresh,
  }) : _onTokenRefresh = onTokenRefresh;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add token to header if available
    final authHeader = _tokenManager.getAuthorizationHeader();
    if (authHeader != null) {
      options.headers['Authorization'] = authHeader;
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized - Token expired
    if (err.response?.statusCode == 401 && _onTokenRefresh != null) {
      // Try to refresh token
      final refreshSuccess = await _onTokenRefresh();

      if (refreshSuccess) {
        // Retry the request with new token
        final options = err.requestOptions;
        final authHeader = _tokenManager.getAuthorizationHeader();
        if (authHeader != null) {
          options.headers['Authorization'] = authHeader;
        }

        try {
          final response = await Dio().fetch(options);
          return handler.resolve(response);
        } catch (e) {
          return handler.next(err);
        }
      }
    }
    return handler.next(err);
  }
}
