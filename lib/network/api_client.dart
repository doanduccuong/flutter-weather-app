import 'package:dio/dio.dart';
import 'package:flutter_base/models/response/array_response.dart';
import 'package:get/get.dart';
import 'package:retrofit/retrofit.dart';
import '../models/entities/notification/notification_entity.dart';
import '../models/entities/token_entity.dart';
import '../models/response/weather_information_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  ///User
  @POST("/login")
  Future<TokenEntity> authLogin(@Body() Map<String, dynamic> body);

  @POST("/logout")
  Future<dynamic> signOut(@Body() Map<String, dynamic> body);

  /// Notification
  @GET("/notifications")
  Future<ArrayResponse<NotificationEntity>> getNotifications(
    @Query('page') int page,
    @Query('pageSize') int pageSize,
  );

  ///Current weather
  @GET("/weather")
  Future<WeatherInformationResponse?> getWeatherContent(
    @Query('appid') String apiKey,
    @Query('lat') double latitude,
    @Query('lon') double longitude,
  );

  @GET("/forecast/hourly")
  Future<WeatherInformationResponse?> getHourlyWeatherContent(
    @Query('appid') String apiKey,
    @Query('lat') double latitude,
    @Query('lon') double longitude,
  );
}
