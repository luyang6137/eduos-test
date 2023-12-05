include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 获取节点列表
    lytest.ListLogPathNodeResponse ListLytest(1: lytest.ListLogPathNodeRequest req) throws (1: common.Error err)
    // 搜索实例日志目录
    lytest.SearchLogPathResponse SearchLytest(1: lytest.SearchLogPathRequest req) throws (1: common.Error err)
    // 获取下载列表
    lytest.ListLogFileDownloadResponse ListLogLytest(1: lytest.ListLogFileDownloadRequest req) throws (1: common.Error err)
    // 创建日志下载记录
    lytest.CreateLogFileDownloadResponse CreateLogLytest(1: lytest.CreateLogFileDownloadRequest req) throws (1: common.Error err)
    // 更新日志下载记录
    lytest.UpdateLogFileDownloadResponse UpdateLogLytest(1: lytest.UpdateLogFileDownloadRequest req) throws (1: common.Error err)
    // 删除日志下载记录
    lytest.DeleteLogFileDownloadResponse DeleteLogLytest(1: lytest.DeleteLogFileDownloadRequest req) throws (1: common.Error err)
    // 批量获取日志目录文件
    lytest.BatchDownloadLogPathResponse BatchLytest(1: lytest.BatchDownloadLogPathRequest req) throws (1: common.Error err)
    // 超长>8182
    // lytest.GetLogFileTreeResponse GetLogFileTree1(1: lytest.GetLogFileTreeRequest req) throws (1: common.Error err)
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser1(1: admin_user.CreateAdminUserRequest req)
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser2(1: admin_user.CreateAdminUserRequest req)
    // 缺少路径
    // admin_user.CreateAdminUserResponse CreateAdminUser3(1: admin_user.CreateAdminUserRequest req)
    // 创建管理员
    // admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req)
    // 删除管理员
    // common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) 
    /* 获取管理员信息 */
    admin_user.GetAdminUserResponse GetAdminLytest(1: admin_user.GetAdminUserRequest req) 
    admin_user.GetAdminUserResponse GetAdminLytest110(1: admin_user.GetAdminUserRequest req) 
    admin_user.GetAdminUserResponse GetAdminLytest111(1: admin_user.GetAdminUserRequest req) 
    admin_user.GetAdminUserResponse GetAdminLytest112(1: admin_user.GetAdminUserRequest req) 
    # 更新管理员信息
    // common.EmptyResponse UpdateAdminUser(1: admin_user.UpdateAdminUserRequest req)
    # 获取订单信息
    // user_order.GetUserOrderResponse GetUserOrder(1: user_order.GetUserOrderRequest req)
}
