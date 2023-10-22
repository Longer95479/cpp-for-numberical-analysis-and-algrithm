#include <dijkstra.hpp>

/* 类初始化函数 */
Dijkstra::Dijkstra(const Eigen::MatrixXd &graph_matrix,
         int num_of_node,
         int start_node): 
        graph_matrix_(graph_matrix),
        num_of_node_(num_of_node),
        start_node_(start_node),
        latest_node_in_S_(start_node) 
{
    paths_ = new std::vector<std::vector<int>>(num_of_node_, std::vector<int>(1, start_node_));
    distant_table_ = new Eigen::MatrixXd(num_of_node_, 2);
    S = new std::vector<int>(num_of_node_, 0);

    S->at(start_node_) = 1;

    for (int i = 0; i < num_of_node_; i++) {
        /* 第一列存对应节点的父节点 */
        (*distant_table_)(i,0) = start_node_;
        /* 第二列存最短距离 */
        (*distant_table_)(i,1) = graph_matrix(start_node_,i);

        paths_->at(i).push_back(i);
    }

}

/* 类析构函数 */
Dijkstra::~Dijkstra()
{
    // delete paths_;
    // delete distant_table_;
}

/* 寻找最短路径及对应距离 */
void Dijkstra::find_shortest_path(void)
{
    /* 计算最短距离 */
    for(;;) {
        int check_sum = 0;
        for (auto node: *S) {
            check_sum += node;
        }
        if (check_sum == num_of_node_)
            break;

        // 寻找集合U中的节点到集合S中的节点的最短距离
        double min_dist = INF;
        int min_index;
        for (int i = 0; i < num_of_node_; i++){
            // 遍历集合S中的节点
            if (S->at(i) == 1) {
                int node_in_S = i;

                for (int j = 0; j < num_of_node_; j++) {

                    // 在集合U中寻找与集合S中节点邻接的节点
                    if (S->at(j) == 0) {
                        if (graph_matrix_(node_in_S,j) != INF) {

                            int adj_of_node_in_S = j;

                            // 寻找最短距离，并缓存对应的两个节点，一个属于集合U，一个属于集合S
                            if (min_dist > 
                                (graph_matrix_(node_in_S,adj_of_node_in_S) 
                                + (*distant_table_)(node_in_S,1))) {
                                
                                /* 更新最短距离 */
                                min_dist = graph_matrix_(node_in_S,adj_of_node_in_S) 
                                           + (*distant_table_)(node_in_S,1);
                                
                                /* 缓存对应的两个节点，一个属于集合U，一个属于集合S */
                                min_index = adj_of_node_in_S;
                                father_of_latest_node_in_S_ = node_in_S;
                            }
                        }
                    }
                }
            }
        }

        /* 记录本步确定最短距离的节点的父节点 */
        (*distant_table_)(min_index,0) = father_of_latest_node_in_S_;
        /* 记录本步确定的最短距离 */
        (*distant_table_)(min_index,1) = min_dist;
        /* 将本步确定最短距离的节点移入集合S */
        S->at(min_index) = 1;
        /* 本步确定最短距离的节点为最新移入集合S的节点 */
        latest_node_in_S_ = min_index;

    }

    /* 生成最短路径 */
    for (int i = 0; i < num_of_node_; i++) {
        int node = i;
        for (;;) {
            /* 如果回溯到起始节点，则退出循环 */
            if ((*distant_table_)(node,0) == start_node_)
                break;
            else {
                /* 插入父节点到第i条路径 */
                paths_->at(i).insert(paths_->at(i).begin()+1, (*distant_table_)(node,0));
                node = (*distant_table_)(node,0);
            }
        }
    }
}

/* 打印给定距离矩阵、最短路径及对应距离 */
void Dijkstra::print(void)
{
    /* 打印给定节点和路径长度矩阵 */
    std::cout << "start node = " << start_node_+1 << std::endl;
    std::cout << "route matrix = " << std::endl << graph_matrix_ << std::endl << std::endl;

    /* 输出指定节点到其他节点的最短路径 */
    std::cout << "shortest path: \n";
    for(auto &path: *paths_) {
        for (auto &node: path) {
            /* 如果节点不是路径的终点，则打印-> */
            if (&node != &path.back())
                std::cout << node+1 << " -> ";
            else
                std::cout << node+1;
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;

    /* 输出指定节点到其他节点的最短路径 */
    std::cout << "shortest distant:" << std::endl;
    std::cout << (*distant_table_)(Eigen::placeholders::all,1).transpose() << std::endl << std::endl;

}

