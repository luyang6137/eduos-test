struct UITestRequest {
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
}

service ApiService {
    // UI自动化测试
    UITestRequest UITest(1: UITestRequest req) (api.get="/github/path/uitest", api.name="ui-idl-github")
}
