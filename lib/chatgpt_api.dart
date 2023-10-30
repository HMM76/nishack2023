 import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/cupertino.dart';

class ChatGptCommunicator
{
    static String data = "";

    static String getData()
    {
      return data;
    }

    const ChatGptCommunicator();

    static Future<void> initSubjectInfoGeneration(String query) async {
      Stream<OpenAIStreamChatCompletionModel> chatStream = OpenAI.instance.chat.createStream(
            model: "gpt-3.5-turbo",
            messages: [
              OpenAIChatCompletionChoiceMessageModel(
                content: "hello",
                role: OpenAIChatMessageRole.system,
              )
            ],
          );

        chatStream.listen((streamChatCompletion) {
            final content = streamChatCompletion.choices.first.delta.content;

            // change UI here
            data = streamChatCompletion.choices.first.delta.content.toString();
            print(data);
            debugPrint(data);
        });
    }

    Future<void> initSorGeneration(String info) async
    {
        Stream<OpenAIStreamChatCompletionModel> chatStream = OpenAI.instance.chat.createStream(
            model: "gpt-3.5-turbo",
            messages: [
              OpenAIChatCompletionChoiceMessageModel(
                content: "hello",
                role: OpenAIChatMessageRole.system,
              )
            ],
          );

        chatStream.listen((streamChatCompletion) {
            final content = streamChatCompletion.choices.first.delta.content;
            // change UI here
            print(content);
            debugPrint(content);
        });
    }
}
