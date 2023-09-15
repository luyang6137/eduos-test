include "base.thrift"

exception Error {
    1: i32 HTTPCode,
    2: string Code,
    3: string Message,
    4: map<string, string> Data,
}

struct EmptyResponse {}

struct EmptyStruct {}

struct EmptyRequest {
    255: required base.TopParam Top
}

struct KeyValuePair {
    1: required string Name,
    2: required string Value,
}

struct Reference {
    // 引用资源的名称
    1: required string Name,
    // 引用资源的类型
    2: required string Kind,
}

struct Room {
    /** 机房 ID */
    1: required string Id,
    /** 机房名称 */
    2: required string Name,
}

struct RoomPartition {
    /** 集群分区 ID */
    1: required string Id,
    /** 集群分区名称 */
    2: required string Name,
}

struct NetworkPartition {
    /** 网络分区 ID */
    1: required string Id,
    /** 网络分区名称 */
    2: required string Name,
}

struct Category {
    /** 系统分类 ID */
    1: required string Id (go.tag = 'validate:"required,k8sLabelValue"')
    /** 系统分类名 */
    2: required string Name,
    /** 简称 */
    3: required string Abbreviation,
}

struct ParentSystem {
    /** 父系统 ID */
    1: required string Id (go.tag = 'validate:"required,k8sLabelValue"'),
    /** 父系统名 */
    2: required string Name,
    /** 简称 */
    3: required string Abbreviation,
}

struct Workspace {
    /** 项目 ID */
    1: required string Id (go.tag = 'validate:"required,k8sLabelValue"'),
    /** 项目名 */
    2: required string Name,
    /** 简称 */
    3: required string Abbreviation,
}

struct CmdbUser {
    /** 用户工号，可唯一标识 */
    1: required string Name,
    /** 用户昵称，和 CMDB 保持一致的命名 */
    2: required string Code,
}

struct Component {
    /** 组件 Id */
    1: required string Id (go.tag = 'validate:"required,k8sLabelValue"'),
    /** 组件名 */
    2: required string Name,
    /** 简称 */
    3: required string Abbreviation,
    /** 运维A岗 */
    4: required list<CmdbUser> OperatorAUsers,
    /** 运维B岗 */
    5: required list<CmdbUser> OperatorBUsers,
}

struct ComponentFullInfo {
    /** 系统分类 */
    1: required Category Category,
    /** 父系统 */
    2: required ParentSystem ParentSystem,
    /** 子系统 */
    3: required Workspace Workspace,
    /** 组件 */
    4: required Component Component,
}

struct BaseResource {
    1: required string Cpu,
    2: required string Memory,
}

struct Resource {
    1: required BaseResource Request,
    2: required BaseResource Limit,
}

struct RoomMeta {
    1: required string Id (go.tag = 'validate:"required,k8sLabelValue"'),
    2: required string Name,
}

struct ListRequest {
    // 集群ID
    1: required string ClusterId,
    // 命名空间（为空时查询所有）
    2: optional string Namespace = "",
    // 分页起点值
    3: optional i32 PageNumber = 1 (go.tag = 'json:"PageNumber" default:"1"'),
    // 分页数量上限
    4: optional i32 PageSize = 9999 (go.tag = 'json:"PageSize" default:"9999"'),
    // 模糊匹配名称
    5: optional string Keyword = "",

    255: required base.TopParam Top
}

struct GetRequest {
    /** 集群ID */
    1: required string ClusterId,
    /** 命名空间 */
    2: required string Namespace,
    /** 资源名 */
    3: required string Name,

    255: required base.TopParam Top
}

struct TopUser {
    1: required i64 AccountId,
    /** 子账号ID，能够访问主账号授权的资源*/
    2: optional i64 UserId ,
    /** 角色ID，能够访问主账号授权的资源*/
    3: optional i64 RoleId ,
    /** 可能回回填的用户名 */
    4: optional string UserName,
}

struct FieldSelector {
    // 查询字段
    1: required string Field
    // 精确匹配
    2: optional string Match
    // 模糊匹配
    3: optional string Search
    // 多项精确匹配
    4: optional list<string> Contains
    // 范围匹配, 注意: 如果 from 或者 to 是 null, 会查询 is null 的数据
    5: optional FieldSelectorRange Range
    // 多项精确匹配
    6: optional list<string> NotContains
    // 精确匹配
    7: optional string NotMatch
}

struct FieldSelectorRange {
    1: optional string From
    2: optional string To
}

struct ClusterSelectorRequirement {
    // 标签名
    1: required string Key
    // 操作符：In、NotIn、Exists、DoesNotExist、Gt、Lt
    2: required string Operator
    // 标签值（逗号分隔）
    3: optional list<string> Values
}

struct ClusterSelectorDomainNameRequirement {
    // domain 前缀
    1: required string Domain
    // 操作符：In、NotIn、Exists、DoesNotExist、UniqueIn
    2: required string Operator
    // 名称 Exists、DoesNotExist 时不填
    3: optional list<string> Names
    // 值
    4: optional string Value
}

struct ClusterSelectorTerm {
    // 匹配表达式
    1: optional list<ClusterSelectorRequirement> MatchExpressions
    // 匹配标签选择器
    2: optional map<string,string> MatchLabels
    // 匹配domainName选择器
    3: optional list<ClusterSelectorDomainNameRequirement> MatchDomainExpressions
}

struct ClusterAffinity {
    // 标签选择器
    1: optional ClusterSelectorTerm LabelSelector
    // 集群名称
    2: optional list<string> ClusterNames
}

struct Condition {
    // 状态更新时间
    1: required string LastTransitionTime
    // 信息
    2: required string Message
    // 版本号
    3: optional i64 ObservedGeneration
    // 原因
    4: required string Reason
    // 状态
    5: required string Status
    // 类型
    6: required string Type
}

struct FieldSort {
    // 排序的字段名 eg: CreateTime,UpdateTime,DeleteTime,Name
    1: required string Key
    // 正序asc/倒序desc
    2: required string Value
}

typedef string PodPublishEnableStatus // 实例路由开关状态
const PodPublishEnableStatus PodPublishEnableStatus_On = "On" // 开启
const PodPublishEnableStatus PodPublishEnableStatus_Off = "Off" // 关闭
const PodPublishEnableStatus PodPublishEnableStatus_Void = "Void" // -

struct RYGateway {
    // 网关 id
    1: optional string Id,
    // 名称
    2: optional string Name,
    // 区域
    3: optional string Region,
    // 可用域
    4: optional string Zone,
    // 网络分区
    5: optional string Vpc,
    // 业务领域
    6: optional string Biz
    // 环境类型
    7: optional string EnvType
}
