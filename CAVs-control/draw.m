% %%
% %{
%     1.6车位置图
%     2.6车速度图
%     3.6车加速度图
%     4.6车观测器位置误差图
%     5.6车观测器速度误差图
%     6.6车观测器加速度误差图
%     7.6车跟随车与虚拟领导者的位置误差
%     8.6车跟随车与虚拟领导者的速度误差
%     9.6车跟随车与虚拟领导者的加速度误差  
% %}
% %%
% % 颜色生成模块
% colors = lines(6);
% %%
% % 1.6车位置图
% % 提取时间数据
% p1_t = p1.time;
% % 提取位置数据
% p1_data = p1.data;
% p2_data = p2.data;
% p3_data = p3.data;
% p4_data = p4.data;
% p5_data = p5.data;
% p6_data = p6.data;
% % 创建图形
% figure(1);
% % 绘制每辆车的位置数据
% plot(p1_t, p1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1，蓝色线条
% plot(p1_t, p2_data, 'Color', colors(2, :), 'LineWidth',1.5); % 车辆 2，红色虚线
% plot(p1_t, p3_data, 'Color', colors(3, :), 'LineWidth',1.5); % 车辆 3，绿色点划线
% plot(p1_t, p4_data, 'Color', colors(4, :), 'LineWidth',1.5); % 车辆 4，洋红色虚线
% plot(p1_t, p5_data, 'Color', colors(5, :), 'LineWidth',1.5); % 车辆 5，青色线条
% plot(p1_t, p6_data, 'Color', colors(6, :), 'LineWidth',1.5); % 车辆 6，黑色虚线
% legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6','FontSize', 12);
% xlabel('t/s','FontSize', 12);
% ylabel('Position (m)','FontSize', 12);
% % 添加网格
% grid on;
% hold off;
% save('p1_data.mat', 'p1_data');
% save('p2_data.mat', 'p2_data');
% save('p3_data.mat', 'p3_data');
% save('p4_data.mat', 'p4_data');
% save('p5_data.mat', 'p5_data');
% save('p6_data.mat', 'p6_data');
% save('p1_t.mat', 'p1_t');
% %%
% % 2.6车速度图
% % 提取时间数据
% v1_t = v1.time;
% % 提取速度数据
% v1_data = v1.data;
% v2_data = v2.data;
% v3_data = v3.data;
% v4_data = v4.data;
% v5_data = v5.data;
% v6_data = v6.data;
% % 创建图形
% figure(2);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的速度数据
% plot(v1_t, v1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(v1_t, v2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(v1_t, v3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(v1_t, v4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(v1_t, v5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(v1_t, v6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6','FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s','FontSize', 12);
% ylabel('Velocity (m/s)','FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% save('v1_data.mat', 'v1_data');
% save('v2_data.mat', 'v2_data');
% save('v3_data.mat', 'v3_data');
% save('v4_data.mat', 'v4_data');
% save('v5_data.mat', 'v5_data');
% save('v6_data.mat', 'v6_data');
% save('v1_t.mat', 'v1_t');
% %%
% % 3.6车加速度图
% % 提取时间数据
% a1_t = a1.time;
% % 提取加速度数据
% a1_data = a1.data;
% a2_data = a2.data;
% a3_data = a3.data;
% a4_data = a4.data;
% a5_data = a5.data;
% a6_data = a6.data;
% % 创建图形
% figure(3);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的加速度数据
% plot(a1_t, a1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(a1_t, a2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(a1_t, a3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(a1_t, a4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(a1_t, a5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(a1_t, a6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6','FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s','FontSize', 12);
% ylabel('Acceleration (m/s^2)','FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% save('a1_data.mat', 'a1_data');
% save('a2_data.mat', 'a2_data');
% save('a3_data.mat', 'a3_data');
% save('a4_data.mat', 'a4_data');
% save('a5_data.mat', 'a5_data');
% save('a6_data.mat', 'a6_data');
% save('a1_t.mat', 'a1_t');
% %%
% % 4.6车观测器位置误差图
% % 提取时间数据
% ep1_t = ep1.time;
% 
% % 提取位置误差数据
% ep1_data = ep1.data;
% ep2_data = ep2.data;
% ep3_data = ep3.data;
% ep4_data = ep4.data;
% ep5_data = ep5.data;
% ep6_data = ep6.data;
% 
% % 创建图形
% figure(4);
% 
% % 定义颜色
% colors = lines(6);
% 
% % 绘制每辆车的位置误差数据
% plot(ep1_t, ep1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(ep1_t, ep2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(ep1_t, ep3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(ep1_t, ep4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(ep1_t, ep5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(ep1_t, ep6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% 
% % 添加图例
% legend({'$$\|x_1(t)-x_{1o} (t)\|$$', '$$\|x_2(t)-x_{2o} (t)\|$$', '$$\|x_3(t)-x_{3o} (t)\|$$', ...
%         '$$\|x_4(t)-x_{4o} (t)\|$$', '$$\|x_5(t)-x_{5o} (t)\|$$', '$$\|x_6(t)-x_{5o} (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best','FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s','FontSize', 12);
% ylabel('Position (m)','FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('ep1_data.mat', 'ep1_data');
% save('ep2_data.mat', 'ep2_data');
% save('ep3_data.mat', 'ep3_data');
% save('ep4_data.mat', 'ep4_data');
% save('ep5_data.mat', 'ep5_data');
% save('ep6_data.mat', 'ep6_data');
% save('ep1_t.mat', 'ep1_t');
% %%
% % 5.6车观测器速度误差图
% % 提取时间数据
% ev1_t = ev1.time;
% 
% % 提取速度误差数据
% ev1_data = ev1.data;
% ev2_data = ev2.data;
% ev3_data = ev3.data;
% ev4_data = ev4.data;
% ev5_data = ev5.data;
% ev6_data = ev6.data;
% % 创建图形
% figure(5);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的速度误差数据
% plot(ev1_t, ev1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(ev1_t, ev2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(ev1_t, ev3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(ev1_t, ev4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(ev1_t, ev5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(ev1_t, ev6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend({'$$\|v_1(t)-v_{1o} (t)\|$$', '$$\|v_2(t)-v_{2o} (t)\|$$', '$$\|v_3(t)-v_{3o} (t)\|$$', ...
%         '$$\|v_4(t)-v_{4o} (t)\|$$', '$$\|v_5(t)-v_{5o} (t)\|$$', '$$\|v_6(t)-v_{6o} (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s','FontSize', 12);
% ylabel('Velocity (m/s)','FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('ev1_data.mat', 'ev1_data');
% save('ev2_data.mat', 'ev2_data');
% save('ev3_data.mat', 'ev3_data');
% save('ev4_data.mat', 'ev4_data');
% save('ev5_data.mat', 'ev5_data');
% save('ev6_data.mat', 'ev6_data');
% save('ev1_t.mat', 'ev1_t');
% %%
% % 6.6车观测器加速度误差图
% % 提取时间数据
% ea1_t = ea1.time;
% % 提取加速度误差数据
% ea1_data = ea1.data;
% ea2_data = ea2.data;
% ea3_data = ea3.data;
% ea4_data = ea4.data;
% ea5_data = ea5.data;
% ea6_data = ea6.data;
% % 创建图形
% figure(6);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的加速度误差数据
% plot(ea1_t, ea1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(ea1_t, ea2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(ea1_t, ea3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(ea1_t, ea4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(ea1_t, ea5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(ea1_t, ea6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend({'$$\|a_1(t)-a_{1o} (t)\|$$', '$$\|a_2(t)-a_{2o} (t)\|$$', '$$\|a_3(t)-a_{3o} (t)\|$$', ...
%         '$$\|a_4(t)-a_{4o} (t)\|$$', '$$\|a_5(t)-a_{5o} (t)\|$$', '$$\|a_6(t)-a_{6o} (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s', 'FontSize', 12);
% ylabel('Acceleration (m/s^2)', 'FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('ea1_data.mat', 'ea1_data');
% save('ea2_data.mat', 'ea2_data');
% save('ea3_data.mat', 'ea3_data');
% save('ea4_data.mat', 'ea4_data');
% save('ea5_data.mat', 'ea5_data');
% save('ea6_data.mat', 'ea6_data');
% save('ea1_t.mat', 'ea1_t');
% %%
% % 7.6车跟随车与虚拟领导者的位置误差
% % 提取时间数据
% lep1_t = lep1.time;
% % 提取位置误差数据
% lep1_data = lep1.data;
% lep2_data = lep2.data;
% lep3_data = lep3.data;
% lep4_data = lep4.data;
% lep5_data = lep5.data;
% lep6_data = lep6.data;
% % 创建图形
% figure(7);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的位置误差数据
% plot(lep1_t, lep1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(lep1_t, lep2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(lep1_t, lep3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(lep1_t, lep4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(lep1_t, lep5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(lep1_t, lep6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend({'$$\|p_1(t)-p_0 (t)\|$$', '$$\|p_2(t)-p_0 (t)\|$$', '$$\|p_3(t)-p_0 (t)\|$$', ...
%         '$$\|p_4(t)-p_0 (t)\|$$', '$$\|p_5(t)-p_0 (t)\|$$', '$$\|p_6(t)-p_0 (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s', 'FontSize', 12);
% ylabel('Position (m)', 'FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('lep1_data.mat', 'lep1_data');
% save('lep2_data.mat', 'lep2_data');
% save('lep3_data.mat', 'lep3_data');
% save('lep4_data.mat', 'lep4_data');
% save('lep5_data.mat', 'lep5_data');
% save('lep6_data.mat', 'lep6_data');
% save('lep1_t.mat', 'lep1_t');
% %%
% % 8.6车跟随车与虚拟领导者的速度误差
% % 提取时间数据
% lev1_t = lev1.time;
% % 提取速度误差数据
% lev1_data = lev1.data;
% lev2_data = lev2.data;
% lev3_data = lev3.data;
% lev4_data = lev4.data;
% lev5_data = lev5.data;
% lev6_data = lev6.data;
% % 创建图形
% figure(8);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的速度误差数据
% plot(lev1_t, lev1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(lev1_t, lev2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(lev1_t, lev3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(lev1_t, lev4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(lev1_t, lev5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(lev1_t, lev6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend({'$$\|v_1(t)-v_0 (t)\|$$', '$$\|v_2(t)-v_0 (t)\|$$', '$$\|v_3(t)-v_0 (t)\|$$', ...
%         '$$\|v_4(t)-v_0 (t)\|$$', '$$\|v_5(t)-v_0 (t)\|$$', '$$\|v_6(t)-v_0 (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s', 'FontSize', 12);
% ylabel('Velocity (m/s)', 'FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('lev1_data.mat', 'lev1_data');
% save('lev2_data.mat', 'lev2_data');
% save('lev3_data.mat', 'lev3_data');
% save('lev4_data.mat', 'lev4_data');
% save('lev5_data.mat', 'lev5_data');
% save('lev6_data.mat', 'lev6_data');
% save('lev1_t.mat', 'lev1_t');
% %%
% % 9.6车跟随车与虚拟领导者的加速度误差
% % 提取时间数据
% lea1_t = lea1.time;
% % 提取加速度误差数据
% lea1_data = lea1.data;
% lea2_data = lea2.data;
% lea3_data = lea3.data;
% lea4_data = lea4.data;
% lea5_data = lea5.data;
% lea6_data = lea6.data;
% % 创建图形
% figure(9);
% % 定义颜色
% colors = lines(6);
% % 绘制每辆车的加速度误差数据
% plot(lea1_t, lea1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
% plot(lea1_t, lea2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
% plot(lea1_t, lea3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
% plot(lea1_t, lea4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
% plot(lea1_t, lea5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
% plot(lea1_t, lea6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6
% % 添加图例
% legend({'$$\|a_1(t)-a_0 (t)\|$$', '$$\|a_2(t)-a_0 (t)\|$$', '$$\|a_3(t)-a_0 (t)\|$$', ...
%         '$$\|a_4(t)-a_0 (t)\|$$', '$$\|a_5(t)-a_0 (t)\|$$', '$$\|a_6(t)-a_0 (t)\|$$'}, ...
%        'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);
% % 添加轴标签和标题
% xlabel('t/s', 'FontSize', 12);
% ylabel('Acceleration (m/s^2)', 'FontSize', 12);
% % 添加网格
% grid on;
% % 释放 hold 状态
% hold off;
% % 保存数据为 .mat 文件
% save('lea1_data.mat', 'lea1_data');
% save('lea2_data.mat', 'lea2_data');
% save('lea3_data.mat', 'lea3_data');
% save('lea4_data.mat', 'lea4_data');
% save('lea5_data.mat', 'lea5_data');
% save('lea6_data.mat', 'lea6_data');
% save('lea1_t.mat', 'lea1_t');
%%
%% 
% 1.6车位置图
% 加载数据
load('p1_data.mat', 'p1_data');
load('p2_data.mat', 'p2_data');
load('p3_data.mat', 'p3_data');
load('p4_data.mat', 'p4_data');
load('p5_data.mat', 'p5_data');
load('p6_data.mat', 'p6_data');
load('p1_t.mat', 'p1_t');

% 创建图形
figure(1);

% 定义颜色
colors = lines(6);

% 绘制每辆车的位置数据
plot(p1_t, p1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(p1_t, p2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(p1_t, p3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(p1_t, p4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(p1_t, p5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(p1_t, p6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Position (m)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 2.6车速度图
% 加载数据
load('v1_data.mat', 'v1_data');
load('v2_data.mat', 'v2_data');
load('v3_data.mat', 'v3_data');
load('v4_data.mat', 'v4_data');
load('v5_data.mat', 'v5_data');
load('v6_data.mat', 'v6_data');
load('v1_t.mat', 'v1_t');

% 创建图形
figure(2);

% 定义颜色
colors = lines(6);

% 绘制每辆车的速度数据
plot(v1_t, v1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(v1_t, v2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(v1_t, v3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(v1_t, v4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(v1_t, v5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(v1_t, v6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Velocity (m/s)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 3.6车加速度图
% 加载数据
load('a1_data.mat', 'a1_data');
load('a2_data.mat', 'a2_data');
load('a3_data.mat', 'a3_data');
load('a4_data.mat', 'a4_data');
load('a5_data.mat', 'a5_data');
load('a6_data.mat', 'a6_data');
load('a1_t.mat', 'a1_t');

% 创建图形
figure(3);

% 定义颜色
colors = lines(6);

% 绘制每辆车的加速度数据
plot(a1_t, a1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(a1_t, a2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(a1_t, a3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(a1_t, a4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(a1_t, a5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(a1_t, a6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend('Vehicle 1', 'Vehicle 2', 'Vehicle 3', 'Vehicle 4', 'Vehicle 5', 'Vehicle 6', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Acceleration (m/s^2)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 4.6车观测器位置误差图
% 加载数据
load('ep1_data.mat', 'ep1_data');
load('ep2_data.mat', 'ep2_data');
load('ep3_data.mat', 'ep3_data');
load('ep4_data.mat', 'ep4_data');
load('ep5_data.mat', 'ep5_data');
load('ep6_data.mat', 'ep6_data');
load('ep1_t.mat', 'ep1_t');

% 创建图形
figure(4);

% 定义颜色
colors = lines(6);

% 绘制每辆车的位置误差数据
plot(ep1_t, ep1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(ep1_t, ep2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(ep1_t, ep3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(ep1_t, ep4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(ep1_t, ep5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(ep1_t, ep6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|x_1(t)-x_{1o} (t)\|$$', '$$\|x_2(t)-x_{2o} (t)\|$$', '$$\|x_3(t)-x_{3o} (t)\|$$', ...
        '$$\|x_4(t)-x_{4o} (t)\|$$', '$$\|x_5(t)-x_{5o} (t)\|$$', '$$\|x_6(t)-x_{6o} (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Position (m)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 5.6车观测器速度误差图
% 加载数据
load('ev1_data.mat', 'ev1_data');
load('ev2_data.mat', 'ev2_data');
load('ev3_data.mat', 'ev3_data');
load('ev4_data.mat', 'ev4_data');
load('ev5_data.mat', 'ev5_data');
load('ev6_data.mat', 'ev6_data');
load('ev1_t.mat', 'ev1_t');

% 创建图形
figure(5);

% 定义颜色
colors = lines(6);

% 绘制每辆车的速度误差数据
plot(ev1_t, ev1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(ev1_t, ev2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(ev1_t, ev3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(ev1_t, ev4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(ev1_t, ev5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(ev1_t, ev6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|v_1(t)-v_{1o} (t)\|$$', '$$\|v_2(t)-v_{2o} (t)\|$$', '$$\|v_3(t)-v_{3o} (t)\|$$', ...
        '$$\|v_4(t)-v_{4o} (t)\|$$', '$$\|v_5(t)-v_{5o} (t)\|$$', '$$\|v_6(t)-v_{6o} (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Velocity (m/s)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 6.6车观测器加速度误差图
% 加载数据
load('ea1_data.mat', 'ea1_data');
load('ea2_data.mat', 'ea2_data');
load('ea3_data.mat', 'ea3_data');
load('ea4_data.mat', 'ea4_data');
load('ea5_data.mat', 'ea5_data');
load('ea6_data.mat', 'ea6_data');
load('ea1_t.mat', 'ea1_t');

% 创建图形
figure(6);

% 定义颜色
colors = lines(6);

% 绘制每辆车的加速度误差数据
plot(ea1_t, ea1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(ea1_t, ea2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(ea1_t, ea3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(ea1_t, ea4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(ea1_t, ea5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(ea1_t, ea6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|a_1(t)-a_{1o} (t)\|$$', '$$\|a_2(t)-a_{2o} (t)\|$$', '$$\|a_3(t)-a_{3o} (t)\|$$', ...
        '$$\|a_4(t)-a_{4o} (t)\|$$', '$$\|a_5(t)-a_{5o} (t)\|$$', '$$\|a_6(t)-a_{6o} (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Acceleration (m/s^2)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 7.6车跟随车与虚拟领导者的位置误差
% 加载数据
load('lep1_data.mat', 'lep1_data');
load('lep2_data.mat', 'lep2_data');
load('lep3_data.mat', 'lep3_data');
load('lep4_data.mat', 'lep4_data');
load('lep5_data.mat', 'lep5_data');
load('lep6_data.mat', 'lep6_data');
load('lep1_t.mat', 'lep1_t');

% 创建图形
figure(7);

% 定义颜色
colors = lines(6);

% 绘制每辆车的位置误差数据
plot(lep1_t, lep1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(lep1_t, lep2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(lep1_t, lep3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(lep1_t, lep4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(lep1_t, lep5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(lep1_t, lep6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|p_1(t)-p_0 (t)\|$$', '$$\|p_2(t)-p_0 (t)\|$$', '$$\|p_3(t)-p_0 (t)\|$$', ...
        '$$\|p_4(t)-p_0 (t)\|$$', '$$\|p_5(t)-p_0 (t)\|$$', '$$\|p_6(t)-p_0 (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Position (m)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 8.6车跟随车与虚拟领导者的速度误差
% 加载数据
load('lev1_data.mat', 'lev1_data');
load('lev2_data.mat', 'lev2_data');
load('lev3_data.mat', 'lev3_data');
load('lev4_data.mat', 'lev4_data');
load('lev5_data.mat', 'lev5_data');
load('lev6_data.mat', 'lev6_data');
load('lev1_t.mat', 'lev1_t');

% 创建图形
figure(8);

% 定义颜色
colors = lines(6);

% 绘制每辆车的速度误差数据
plot(lev1_t, lev1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(lev1_t, lev2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(lev1_t, lev3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(lev1_t, lev4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(lev1_t, lev5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(lev1_t, lev6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|v_1(t)-v_0 (t)\|$$', '$$\|v_2(t)-v_0 (t)\|$$', '$$\|v_3(t)-v_0 (t)\|$$', ...
        '$$\|v_4(t)-v_0 (t)\|$$', '$$\|v_5(t)-v_0 (t)\|$$', '$$\|v_6(t)-v_0 (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Velocity (m/s)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;

%% 
% 9.6车跟随车与虚拟领导者的加速度误差
% 加载数据
load('lea1_data.mat', 'lea1_data');
load('lea2_data.mat', 'lea2_data');
load('lea3_data.mat', 'lea3_data');
load('lea4_data.mat', 'lea4_data');
load('lea5_data.mat', 'lea5_data');
load('lea6_data.mat', 'lea6_data');
load('lea1_t.mat', 'lea1_t');

% 创建图形
figure(9);

% 定义颜色
colors = lines(6);

% 绘制每辆车的加速度误差数据
plot(lea1_t, lea1_data, 'Color', colors(1, :), 'LineWidth', 1.5); hold on; % 车辆 1
plot(lea1_t, lea2_data, 'Color', colors(2, :), 'LineWidth', 1.5); % 车辆 2
plot(lea1_t, lea3_data, 'Color', colors(3, :), 'LineWidth', 1.5); % 车辆 3
plot(lea1_t, lea4_data, 'Color', colors(4, :), 'LineWidth', 1.5); % 车辆 4
plot(lea1_t, lea5_data, 'Color', colors(5, :), 'LineWidth', 1.5); % 车辆 5
plot(lea1_t, lea6_data, 'Color', colors(6, :), 'LineWidth', 1.5); % 车辆 6

% 添加图例
legend({'$$\|a_1(t)-a_0 (t)\|$$', '$$\|a_2(t)-a_0 (t)\|$$', '$$\|a_3(t)-a_0 (t)\|$$', ...
        '$$\|a_4(t)-a_0 (t)\|$$', '$$\|a_5(t)-a_0 (t)\|$$', '$$\|a_6(t)-a_0 (t)\|$$'}, ...
       'Interpreter', 'latex', 'Location', 'best', 'FontSize', 12);

% 添加轴标签
xlabel('t/s', 'FontSize', 12);
ylabel('Acceleration (m/s^2)', 'FontSize', 12);

% 添加网格
grid on;

% 释放 hold 状态
hold off;