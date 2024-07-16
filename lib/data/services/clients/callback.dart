import 'package:liverpod_structure/data/models/default_response.dart';
import 'package:liverpod_structure/data/models/paginated_response.dart';
import 'package:retrofit/retrofit.dart';

export 'package:retrofit/retrofit.dart';
export 'package:liverpod_structure/data/models/paginated_response.dart';
export 'package:liverpod_structure/data/models/default_response.dart';

typedef FutureDefaultResponse<T> = Future<HttpResponse<DefaultResponse<T>>>;
typedef FutureApiResponse<T> = Future<HttpResponse<T>>;

typedef FuturePaginatedResponse<T>
    = Future<HttpResponse<PaginatedResponse<T>>>;

typedef FromJsonT<T> = T Function(Object?);
