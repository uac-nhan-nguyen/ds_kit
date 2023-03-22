class Cache<T> {
  final T data;
  final DateTime time = DateTime.now();
  final int expirationSeconds;

  bool get isExpired =>
      DateTime.now().difference(time).inSeconds > expirationSeconds;

  Cache({required this.expirationSeconds, required this.data});
}


class CacheFuture<T> {
  final Future<T> future;
  final DateTime time = DateTime.now();
  final int expirationSeconds;

  bool get isExpired =>
      DateTime.now().difference(time).inSeconds > expirationSeconds;

  CacheFuture({required this.expirationSeconds, required this.future});
}