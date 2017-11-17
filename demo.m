%% ����ǰ��Ҫ��֤copy options��ѡ��
%% preserve information
%% transparent background
%% match figure screen size

close all;

t = 0:0.05:1;
numOfLines = 8;
strCell = cell(1,numOfLines);

%% �Զ���ʽ
% (1) ��ɫ����ǣ�����˳��

% 'cml': ��color���� marker��� line��˳������������ʽ
labelsForPlotLine = UtilForFormat.labelsForPlotLineGnrt('cml');

figure;
hold on;
grid on;
for ia = 1:numOfLines
    plot(t, ia + sin(2 * pi * t), labelsForPlotLine{1,ia});
    strCell{1,ia} = sprintf('����%d',ia);
end
legend(strCell);
UtilForFormat.setLineWidth(1.5); % �����߿�
UtilForFormat.dissertationPlot(...
    '��ʽ���ȼ�����ɫ>���>����',... % �����ַ���
    'x��',...
    'y��',... 
    7.5 ...   % �̶���ȣ���λcm
);
% (2) ��ʽ���ȼ������>��ɫ>����
labelsForPlotLine = UtilForFormat.labelsForPlotLineGnrt('mcl');

figure;
hold on;
grid on;
for ia = 1:numOfLines
    plot(t, ia + sin(2 * pi * t), labelsForPlotLine{1,ia});
    strCell{1,ia} = sprintf('����%d',ia);
end
legend(strCell);
UtilForFormat.setLineWidth(1.5);
UtilForFormat.dissertationPlot('��ʽ���ȼ������>��ɫ>����','x��','y��',7.5);
%% ��άͼ
% ������Ӧ�߶�
xVec = 1:100;
yVec = 1:150;
figure;
imagesc(xVec,yVec,rand(length(yVec),length(xVec)));
axis equal;
xlim([min(xVec),max(xVec)]);
ylim([min(yVec),max(yVec)]);
UtilForFormat.colorbarPlot('ֵ[��λ]');
UtilForFormat.dissertationPlotNoAdjust(sprintf('10cm��������Ӧ\nȱ�㣺����հ� '),'x��','y��',10);
% ����Ӧ�߶�
figure;
imagesc(xVec,yVec,rand(length(yVec),length(xVec)));
axis equal;
xlim([min(xVec),max(xVec)]);
ylim([min(yVec),max(yVec)]);
UtilForFormat.colorbarPlot('ֵ[��λ]');
UtilForFormat.dissertationPlot('10cm������Ӧ','x��','y��',10);