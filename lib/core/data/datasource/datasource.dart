abstract class LocalDataSource<ResponseType,RequestType>{
  Future<ResponseType> load(RequestType request);
  Future<void> add(ResponseType remoteLoad);
}

abstract class RemoteDataSource<ResponseType, RequestType>{
  Future<ResponseType> load(RequestType request);
}
