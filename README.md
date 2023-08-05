# **2023 -** **基于云原生技术的软件开发 - 大作业**

# **作业说明**

开发一个 Spring Boot 应用，并使用云原生功能

## **1. 功能要求**

1. 实现一个 REST 接口（简单接口即可，比如 json 串 {"msg":"hello"}）
2. 接口提供限流功能，当请求达到每秒 100 次的时候，返回 429（Too many requests）
3. **加分项**：当后端服务有多个实例的时候（一个 Service 包含若干个 Pod），如何实现**统一限流**

## **2. DevOps 要求**

1. 为该项目准备 Dockerfile，用于构建镜像
2. 为该项目准备 Kubernetes 编排文件，用于在 Kubernetes 集群上创建 Deployment 和 Service
3. 编写 Jenkins 持续集成流水线，实现**代码构建**/**单元测试**/**镜像构建**功能（需要写至少一个单元测试）
4. 编写 Jenkins 持续部署流水线，实现部署到 Kubernetes 集群的功能，该流水线的触发条件为持续集成流水线执行成功
5. 注意：持续集成流水线和持续部署流水线也可以合二为一。

## **3. 扩容场景**

1. 为该 Java 项目提供 Prometheus metrics 接口，可以供 Prometheus 采集监控指标
2. 在 Grafana 中的定制应用的监控大屏（CPU/内存/JVM）
3. 使用压测工具（例如 Jmeter）对接口进压测，在 Grafana 中观察监控数据
4. 通过 Kubernetes 命令进行手工扩容，并再次观察 Grafana 中的监控数据
5. 加分项：使用 Kubernetes HPA 模块根据 CPU 负载做服务的 Auto Scale

# **分数说明**

本次作业占总评 55 分，分数分配如下

1. **功能要求（****20** **分）**

1.1 实现接口 （5 分）

1.2 实现限流功能（10 分）

1.3 实现接口访问指标（QPS），并暴露给 Prometheus（5分）

1.3 **统一限流（bonus 5 分）**

**2. DevOps 要求（****20** **分）**

2.1 Dockerfile 用于构建镜像（5 分）

2.2 Kubernetes 编排文件（5 分）

2.3 持续集成流水线（5 分）

2.4 持续部署流水线（5 分）

**2.5 代码提交到仓库自动触发流水线（bonus 5分）**

**3. 扩容场景（****15** **分）**

3.1 Prometheus 采集监控指标（5 分）

3.2 Grafana 定制应用监控大屏（5 分）

3.3 压测并观察监控数据（5 分） 

**3.5 Auto Scale（bonus 10 分）**

# **参考**

[Kubernetes 滚动发布教学](https://doc.weixin.qq.com/doc/w3_AK4AcQYdAN009vjjw3LTAOrcZ2kcn?scode=ABoAuwfGAAkjkTfgz6AK4AcQYdAN0)

[Jenkins + Kubernetes DevOps 教学](https://doc.weixin.qq.com/doc/w3_m_YeHOnMvfCxXW?scode=ABoAuwfGAAkCUcz9HWAK4AcQYdAN0)

[Pod 水平自动扩缩 | Kubernetes](https://kubernetes.io/zh-cn/docs/tasks/run-application/horizontal-pod-autoscale/)

[Rate Limiting a Spring API Using Bucket4j | Baeldung](https://www.baeldung.com/spring-bucket4j)

# **提交要求**

只需提交一份项目说明文档，必须包含以下内容：

1. 限流功能代码说明和截图
2. Dockerfile，K8s 编排文件截图及说明
3. Jenkins 持续集成、持续部署、持续测试配置截图及说明，以及后续验证流水线成功的截图
4. 监控指标采集的配置及说明；Grafana 监控大屏截图
5. 压测工具配置说明，及相应压测监控截图；K8s 手工扩容后，相应压测监控截图

文档内容不限于以上所述，可以任意添加其余说明，使得文档更清晰

一组由一人提交即可，文档内写明组员的信息，姓名和学号



注意：因为只会根据文档评分，文档一定要完整准确清晰地体现所做的工作，请大家对自己负责！

统一提交 pdf 文件，统一文件命名，组号.pdf，如所在组为 1 组，则文件名为：1.pdf



# **分组**

## **分组方式**

自由组合，三人一组（也可以一个人或者两个人一个小组），跟助教登记，后期账号会按照小组生成和发放。



## **分组截止时间**

2023年7月9日24:00截止



# **提交时间**

2023年8月15日24:00截止
