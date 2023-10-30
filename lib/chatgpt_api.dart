 import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/cupertino.dart';

class ChatGptCommunicator
{
    static String data = "";

    const ChatGptCommunicator();

    static Future<String> initSubjectInfoGeneration(String query) async {
      OpenAIChatCompletionModel chatCompletion = await OpenAI.instance.chat.create(
        model: "gpt-3.5-turbo",
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: "hello, what is Flutter and Dart ?",
            role: OpenAIChatMessageRole.user,
          ),
        ],
      );

      return chatCompletion.choices.first.message.content.toString();
    }

    Future<String> initSorGeneration(String info) async
    {

      OpenAIChatCompletionModel chatCompletion = await OpenAI.instance.chat.create(
        model: "gpt-3.5-turbo",
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: "hello, what is Flutter and Dart ?",
            role: OpenAIChatMessageRole.user,
          ),
        ],
      );

      return chatCompletion.choices.first.message.content.toString();

        // Stream<OpenAIStreamChatCompletionModel> chatStream = OpenAI.instance.chat.createStream(
        //     model: "gpt-3.5-turbo",
        //     messages: [
        //       OpenAIChatCompletionChoiceMessageModel(
        //         content: "hello",
        //         role: OpenAIChatMessageRole.system,
        //       )
        //     ],
        //   );
        //
        // chatStream.listen((streamChatCompletion) {
        //     final content = streamChatCompletion.choices.first.delta.content;
        //     // change UI here
        //     print(content);
        //     debugPrint(content);
        // });
    }
}
