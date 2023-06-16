#include <stdio.h>

int main() {
    FILE *voro_in = fopen("voro_in", "r");
    FILE *voro_in_Trans = fopen("voro_in_Trans", "w");
    int ID;
    double x, y, z;
    int time = 1;
    while (fscanf(voro_in, "%d%lf%lf%lf", &ID, &x, &y, &z) != EOF && time <= 4000) {
        // 在这里处理读取到的整数 num
        fprintf(voro_in_Trans, "%d\t%.15lf\t%.15lf\t%.15lf\n", ID, x, y, z);
	time++;
    }
    
    printf("End of input\n");
    fclose(voro_in);
    fclose(voro_in_Trans);    
    return 0;
}

