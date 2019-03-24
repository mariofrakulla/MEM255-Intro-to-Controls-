poissons = [0.29,0.47,0.3,0.3,0.31,0.31];
load = [100, 200, 500, 600, 700, 1000];
% truepois = 0.33*ones(length(poissons)); 
% poissCant = [0.37, 0.35,0.34,0.3,0.28,0.32];
% h = figure(3)
% plot(load, poissons, 'LineWidth', 1.25, 'Color', 'Cyan','Marker', 's',...
%     'MarkerFaceColor', 'Cyan', 'MarkerEdgeColor', 'Cyan')
% hold on
% grid on
% plot(load, poissCant, 'LineWidth', 1.25, 'Color', 'Red','Marker', 's',...
%     'MarkerFaceColor', 'Red', 'MarkerEdgeColor', 'Red')
% plot(load, truepois, 'LineWidth', 1.25, 'Color', 'Green','Marker', 's',...
%     'MarkerFaceColor', 'Green', 'MarkerEdgeColor', 'Green')
% 
% xlabel('Load (g)', 'FontWeight', 'Bold', 'FontSize', 11.25)
% ylabel('Poisson''s Ratio', 'FontWeight', 'Bold', 'FontSize', 11.25)
% legend('Simply Supported Beam Experimental Value',...
%     'Cantilever Beam Experimental Value', 'Aluminum Material Property Value') 
% saveas(h,'filename.jpg')
% 
% m = figure(4)
% 
% strainXSS = [16.93,33.82,90.63,109.55,124.48,189.21];
% plot(load, strainXSS, 'LineWidth', 1.25, 'Color', 'Black','Marker', 's',...
%     'MarkerFaceColor', 'Black', 'MarkerEdgeColor', 'Black')
% grid on
% hold on 
% strainXCant = [-7.96,-13.94,-34.85,-44.81,-52.79,-70.7];
% plot(load, strainXCant, 'LineWidth', 1.25, 'Color', 'Red','Marker', 's',...
%     'MarkerFaceColor', 'Red', 'MarkerEdgeColor', 'Red')
% xlabel('Load (g)', 'FontWeight', 'Bold', 'FontSize', 8.25)
% ylabel('Corrected Strain X', 'FontWeight', 'Bold', 'FontSize', 8.25)
% 
% saveas(m,'filename2.jpg')
% 
% 
% close all
theoStrainCant = [21.819,43.638,109.108,130.927,152.745,218.215];
corrStrainCant = [16.93,33.82,90.63,109.55,124.48,189.21];
simplySupmod = 41.48*ones(6,1);
orig = 69*ones(6,1);
CantMod= 125.5*ones(6,1);
%%  
mmm = figure(33)
% plot(load, simplySupmod, 'LineWidth', 1.25, 'Color', 'Cyan','Marker', 's',...
%     'MarkerFaceColor', 'Cyan', 'MarkerEdgeColor', 'Cyan')
% hold on
% grid on
% plot(load, CantMod, 'LineWidth', 1.25, 'Color', 'Red','Marker', 's',...
%     'MarkerFaceColor', 'Red', 'MarkerEdgeColor', 'Red')
% plot(load, orig, 'LineWidth', 1.25, 'Color', 'Green','Marker', 's',...
%     'MarkerFaceColor', 'Green', 'MarkerEdgeColor', 'Green')
% 
% xlabel('Load (g)', 'FontWeight', 'Bold', 'FontSize', 11.25)
% ylabel('Young''s Modulus (GPa)', 'FontWeight', 'Bold', 'FontSize', 11.25)
% legend('Simply Supported Beam Experimental Value',...
%     'Cantilever Beam Experimental Value', 'Aluminum Material Property Value',...
%     'location', 'east') 
% saveas(mmm,'filename4.jpg')


plot(load, theoStrainCant,'LineWidth', 1.25, 'Color', [1, 0.75, 0],'Marker', 's',...
    'MarkerFaceColor', [1, 0.75, 0], 'MarkerEdgeColor', [1, 0.75, 0])
grid on 
hold on
plot(load, corrStrainCant,'LineWidth', 1.25, 'Color', [0.67, 0, 1],'Marker', 's',...
    'MarkerFaceColor', [0.67, 0, 1], 'MarkerEdgeColor', [0.67, 0, 1])
xlabel('Load (g)', 'FontWeight', 'Bold', 'FontSize', 13.25)
ylabel('Strain (\mu\epsilon)', 'FontWeight', 'Bold', 'FontSize', 13.25)
legend('Theoretical Strain', 'Corrected Strain', 'location', 'northwest')
saveas(mmm,'filename7.jpg')