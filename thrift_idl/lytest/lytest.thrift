include "common.thrift"
include "base.thrift"

struct GetLogFileTreeRequest {
    // 所属节点
    1: required string Node,
    // 搜索logpath路径下的文件和文件夹
    2: required string Path ,
    // 命名空间
    3: required string Namespace,
    // 应用组件
    4: required string Application,
    // 部署环境
    5: required string Workspace,
    // 节点所在集群名
    6: required string ClusterName,
    // 查找历史信息
    7: required bool IsHistory,

    255: required base.TopParam Top
}

struct LogFileInfo {
    // 文件名
    1: required string Name,
    // 文件大小
    2: optional string Size,
    // 文件创建时间
    3: required string CreateTime,
    // 文件类型：文件:file、文件夹:dir
    4: required string FileType,
}

struct GetLogFileTreeResponse {
    1: required list<LogFileInfo> LogInfos,
}

struct ErrMsg {
    // 错误提示
    1: required string MsgInfo,
    // 具体错误，排错使用
    2: required string ErrLog,
}

struct LogFileDownload {
    // 节点名称
    1: required string Node,
    // 文件名称
    2: required string FileName,
    // 文件路径
    3: required string FilePath,
    // 创建账号
    4: required string Creator,
    // 创建时间
    5: required string CreateTime,
    // 文件上传obs的path，用于下载
    6: required string OBSPath,
    // 文件大小
    7: required string FileSize,
    // 错误信息，文件上传失败原因
    8: required ErrMsg ErrMsg,
    // 生成状态：生成中、生成成功、生产失败
    9: required string Status,
    // 所属实例
    10: required string PodName,
    // 命名空间
    11: required string Namepspace,
    // 应用组件
    12: required string Application,
    // ID唯一标识
    13: required string ID,
    // 业务领域
    14: required string MetaBiz,
    // 环境类型
    15: required string MetaEnvType,
    // 网络分区
    16: required string MetaVPC,
    // 区域
    17: required string MetaRegion,
}

struct ListLogFileDownloadRequest {
    // 文件名
    1: optional string FileName,
    // 过滤条件：Name:Search，CreateUser:Search，CreateTime:Range
    2: optional list<common.FieldSelector> FieldSelectors
    // 命名空间
    3: required string Namesapce,
    // 应用组件名
    4: required string Application,

    // 分页，当前页，默认为 1
    100: optional i32 PageNumber = 1 (go.tag = 'json:"PageNumber" default:"1"')
    // 分页，每页尺寸，默认为 100
    101: optional i32 PageSize = 100 (go.tag = 'json:"PageSize" default:"100"')

    255: required base.TopParam Top
}

struct ListLogFileDownloadResponse {
    1: required list<LogFileDownload> Items,
    2: required i64 Total,
}

struct CreateLogFileDownloadRequest {
    // 节点名
    1: required string Node,
    // 集群Name
    2: required string ClusterName,
    // 文件名称
    3: required string FileName,
    // 文件路径
    4: required string FilePath,
    // 所属实例
    5: required string PodName,
    // 命名空间
    6: required string Namespace,
    // 应用组件
    7: required string Application,

    255: required base.TopParam Top
}

struct CreateLogFileDownloadResponse {
    // id
	1: required string Id,
}

struct UpdateLogFileDownloadRequest {
    // id
	1: required string Id,
	// 文件上传obs的path，用于下载
    2: optional string OBSPath,
    // 错误信息，文件上传失败原因
    3: optional ErrMsg ErrMsg,
    // 生成状态：生成中、生成成功、生产失败
    4: optional string Status,
    // 文件大小
    5: optional string FileSize,
    // 文件哈希值
    6: optional string OBSSha256,

    255: required base.TopParam Top
}

struct UpdateLogFileDownloadResponse {
}

struct DeleteLogFileDownloadRequest {
    // id
	1: required string Id,

    255: required base.TopParam Top
}

struct DeleteLogFileDownloadResponse {
}


struct ListLogPathNodeRequest {
    // 命名空间
    1: required string Namespace,
    // 部署环境
    2: required string WorkSpace,
    // 查找历史信息
    3: required bool IsHistory,

    255: required base.TopParam Top
}

struct NodeInfo{
    // 节点
    1: required string Node,
    // 集群Name
    2: required string ClusterName,
    // 集群别名
    3: required string ClusterAlias,
}

struct ListLogPathNodeResponse {
    1: required list<NodeInfo> NodeList,
    2: required bool NoDisplay,
}

struct SearchLogPathRequest {
    // 命名空间
    1: required string Namespace,
    // 应用组件
    2: required string Application,
    // 部署实例名
    3: required string PodName,
    // 是否是历史列表
    4: required bool IsHistory,
    // 集群名
    5: required string ClusterName,
    // 节点
    6: required string Node,

    255: required base.TopParam Top
}

struct SearchLogPathResponse {
    1: required string Path,
}

struct BatchDownloadLogPathRequest {
    // 所属节点
    1: required string Node,
    // 搜索logpath路径下的文件和文件夹
    2: required string Path ,
    // 命名空间
    3: required string Namespace,
    // 应用组件
    4: required string Application,
    // 部署环境
    5: required string Workspace,
    // 节点所在集群名
    6: required string ClusterName,
    // 查找历史信息
    7: required bool IsHistory,

    255: required base.TopParam Top
}

struct BatchLogFileInfo {
    // 文件名
    1: required string Name,
    // 文件大小
    2: optional string Size,
    // 文件创建时间
    3: required string CreateTime,
    // 文件类型：文件:file、文件夹:dir
    4: required string Path,
}

struct BatchDownloadLogPathResponse {
    1: required list<BatchLogFileInfo> LogInfos,
}