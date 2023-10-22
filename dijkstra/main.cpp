#include <iostream>
#include <vector>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <dijkstra.hpp>


int main(int argc, char ** argv)
{
    int num_of_node = 6;
    int start_node = 1-1;

    Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic> route_matrix(num_of_node, num_of_node);
    route_matrix << 0, 7, 1, INF, INF, 6,
                    7, 0, 5, INF, 6, INF,
                    1, 5, 0, 2, INF, 10,
                    INF, INF, 2, 0, 8, 9,
                    INF, 6, INF, 8, 0, 5,
                    6, INF, 10, 9, 5, 0;

    Dijkstra paths_finder(route_matrix, num_of_node, start_node);
    paths_finder.find_shortest_path();
    paths_finder.print();

    return 0;

}
