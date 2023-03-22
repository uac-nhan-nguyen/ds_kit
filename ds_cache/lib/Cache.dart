class Cache<T> {
  final T data;
  final DateTime time = DateTime.now();
  final int expirationSeconds;

  bool get expired =>
      DateTime.now().difference(time).inSeconds > expirationSeconds;

  Cache({required this.expirationSeconds, required this.data});
}
