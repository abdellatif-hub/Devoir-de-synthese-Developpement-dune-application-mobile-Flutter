import 'package:dio/dio.dart';
import '../api/rag_api.dart';
import '../models/rag_response.dart';

class ApiService {
  late RagApi _ragApi;

  ApiService() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "http://10.0.2.2:8000", // Backend RAG (Android Emulator)
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    _ragApi = RagApi(dio);
  }

  /// Envoie une question au backend RAG
  Future<RagResponse> askQuestion(String question) async {
    try {
      final response = await _ragApi.askQuestion({
        "question": question,
      });
      return response;
    } catch (e) {
      throw Exception("Erreur lors de l'appel à l'API RAG");
    }
  }
}
