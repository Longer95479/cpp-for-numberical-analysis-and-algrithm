#ifndef DIJKSTRA_H
#define DIJKSTRA_H

#include <iostream>
#include <vector>
#include <Eigen/Core>
#include <Eigen/Dense>

#define NOT_A_NODE  -1
#define INF    100

class Dijkstra
{
private:
    const Eigen::MatrixXd &graph_matrix_;   /* 图矩阵 */
    int num_of_node_;   /* 节点数量 */
    int start_node_;    /* 起始点序号 */
    int latest_node_in_S_;   /* 上一步被添加进S的节点 */
    int father_of_latest_node_in_S_;    /* 上一步被添加进S的节点的父节点 */

    std::vector<int> *S;    /* 已确定最短路径的节点集合，即值为1的节点集合 */
    std::vector<std::vector<int>> *paths_;  /* 最短路径集合 */
    Eigen::MatrixXd *distant_table_;    /* 给定起点后，其他点到该点的实时更新距离 */


public:
    /* 寻最短路径 */
    Dijkstra(const Eigen::MatrixXd &graph_matrix,
             int num_of_node,
             int start_node);

    ~Dijkstra();

    void find_shortest_path(void);
    void print(void);

};


#endif
