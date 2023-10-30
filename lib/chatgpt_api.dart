import 'package:dart_openai/dart_openai.dart';

class ChatGptCommunicator
{
    const ChatGptCommunicator();

    Future<void> initSubjectInfoGeneration(String query) async {
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
        });
    }
}
