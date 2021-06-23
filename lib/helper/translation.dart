class Messages {
  static Map<String, Map<String, String>> get translationKeys {
    return {
      'pt_BR': {
        'login': 'Nome do Usuário',
        'password': 'Senha',
        'language': 'Idioma',
        'enter': 'Entrar',
        'error_login_msg':
            'Voce deve especificar um nome de usuário e senha válidos.',
        'error_session': 'Sua sessao expirou.'
      },
      'en_US': {
        'login': 'UserName',
        'password': 'Password',
        'language': 'Language',
        'enter': 'Enter',
        'error_login_msg':
            'You must to especify a valid username and password.',
        'error_session': 'Your session expired.'
      },
    };
  }
}
