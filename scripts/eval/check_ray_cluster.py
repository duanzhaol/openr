import ray

def check_ray_cluster():
    try:
        # 尝试连接到Ray集群，使用自动发现机制（假设Ray集群在本地环境且配置允许自动连接）
        ray.init(address='auto')
        # 获取集群资源视图，返回类似 {'CPU': 数量, 'GPU': 数量,...} 的字典
        resources = ray.cluster_resources()
        print("Ray集群资源情况:")
        for resource, quantity in resources.items():
            print(f"{resource}: {quantity}")
        
        # 获取集群节点信息，返回节点信息的列表，每个节点信息是一个字典
        nodes = ray.nodes()
        print("\nRay集群节点信息:")
        for node in nodes:
            print("节点ID:", node['NodeID'])
            print("节点是否存活:", node['Alive'])
            print("节点资源:", node['Resources'])
            print("节点管理器地址:", node['NodeManagerAddress'])
            print("-" * 30)
    except Exception as e:
        print(f"连接Ray集群出现错误: {e}")

if __name__ == "__main__":
    check_ray_cluster()