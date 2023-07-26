import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class SupabaseAuthForm extends StatelessWidget {
  const SupabaseAuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SupaEmailAuth(
      key: UniqueKey(),
      redirectTo: kIsWeb ? null : 'io.mydomain.myapp://callback',
      onSignInComplete: (response) {
        print(response);
        // do something, for example: navigate('home');
      },
      onSignUpComplete: (response) {
        print(response);
        // do something, for example: navigate("wait_for_email");
      },
      metadataFields: [
        MetaDataField(
          prefixIcon: const Icon(Icons.person),
          label: 'Username',
          key: 'username',
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'Please enter something';
            }
            return null;
          },
        ),
      ],
    );
  }
}
