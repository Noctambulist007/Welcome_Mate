import 'package:welcomemate/data/datasource/remote/model/response/pagination/pagination_response.dart';
import 'package:welcomemate/domain/model/pagination/pagination.dart';

extension PaginationResponseMapper on PaginationResponse {
  Pagination toPagination() {
    return Pagination(total: total, page: page, limit: limit, pages: pages);
  }
}
