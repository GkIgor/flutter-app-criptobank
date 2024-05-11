class AuthState {
  bool _isAuthenticated = false;

  void removeAuth() {
    _isAuthenticated = false;
  }

  void addAuth() {
    _isAuthenticated = true;
  }

  get isAuth => _isAuthenticated;
}
