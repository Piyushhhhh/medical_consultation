import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/data/mock_data/conversation.dart';
import 'package:medical_consultation/features/shared/notifiers/base_notifier.dart';
import 'package:medical_consultation/models/conversation.dart';

class ConversationProvider extends BaseNotifier {
  List<Conversation> userCurrentConversations = [];
  Future<void> featchUserCurrentConversation() async {
    try {
      sendLoading();
      userCurrentConversations = userConversations;
      sendSuccess();
    } on Error catch (error) {
      sendError(message: error.toString());
    } catch (_) {
      sendError(message: Strings.defaultErrorMessage);
      rethrow;
    }
  }
}
