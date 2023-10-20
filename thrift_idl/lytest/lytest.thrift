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
    
    //测试1
    8: optional string param1
    9: optional string param2
    10: optional string param3
    11: optional string param4
    12: optional string param5
    13: optional string param6
    14: optional string param7
    15: optional string param8
    16: optional string param9
    17: optional string param10
    18: optional string param11
    19: optional string param12
    20: optional string param14
    21: optional string param15
    22: optional string param16
    23: optional string param17
    24: optional string param18
    25: optional string param19
    26: optional string param20
    27: optional string param21
    28: optional string param22
    29: optional string param23
    30: optional string param24
    31: optional string param25
    32: optional string param26
    33: optional string param27
    34: optional string param28
    35: optional string param29
    36: optional string param30
    37: optional string param31
    38: optional string param32
    39: optional string param33
    40: optional string param34
    41: optional string param35
    42: optional string param36
    43: optional string param37
    44: optional string param38
    45: optional string param39
    46: optional string param40
    47: optional string param41
    48: optional string param42
    49: optional string param43
    50: optional string param44
    51: optional string param45
    52: optional string param46
    53: optional string param47
    54: optional string param48
    55: optional string param49
    56: optional string param50
    57: optional string param51
    58: optional string param52
    59: optional string param53
    60: optional string param54
    61: optional string param55
    62: optional string param56
    63: optional string param57
    64: optional string param58
    65: optional string param59
    66: optional string param60
    67: optional string param61
    68: optional string param62
    69: optional string param63
    70: optional string param64
    71: optional string param65
    72: optional string param66
    73: optional string param67
    74: optional string param68
    75: optional string param69
    76: optional string param70
    77: optional string param71
    78: optional string param72
    79: optional string param73
    80: optional string param74
    81: optional string param75
    82: optional string param76
    83: optional string param77
    84: optional string param78
    85: optional string param79
    86: optional string param80
    87: optional string param81
    88: optional string param82
    89: optional string param83
    90: optional string param84
    91: optional string param85
    92: optional string param86
    93: optional string param87
    94: optional string param88
    95: optional string param89
    96: optional string param90
    97: optional string param91
    98: optional string param92
    99: optional string param93
    100: optional string param94
    101: optional string param95
    102: optional string param96
    103: optional string param97
    104: optional string param98
    105: optional string param99
    106: optional string param100

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
    //测试1
    2: optional i32 test (api.header = 'test')
    //测试2
    3: optional string text (api.body = 'text')
    //测试3
    4: optional string header1 (api.header = 'header1')
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
