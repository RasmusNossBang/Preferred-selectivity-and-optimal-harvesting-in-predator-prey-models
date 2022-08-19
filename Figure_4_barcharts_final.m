predator_age=[3	4	5	6	7	8	9	10	11	12	13	14]
prey_age = [1 2 3 4]


%%%% Number at age
predator_sel1_no = [706066.3386	523066.8086	407364.8402	333522.1224	273064.8184	223566.5644	183040.8217	111110.2883	50006.42486	22505.94941	10129.05362	10124.76386]
predator_sel2_no = [695935.4399	515561.6543	401519.8201	328736.6247	269146.7843	176446.7891	92623.62737	48621.66316	25523.35938	13398.18163	7033.214878	9492.279759]
xpred = [predator_sel1_no;predator_sel2_no]
prey_sel1_no = [47894101.14	33657588.99	19778714.21	19109310.17]
prey_sel2_no = [48122571.53	35306807.01	21590336.59	22442263]
xprey = [prey_sel1_no; prey_sel2_no]


%%%% Harvest at age
predator_sel1_h = [0	0	0	0	0	0	43111.39675	45796.74379	20611.33548	9276.361486	4174.92998	4173.16185]
predator_sel2_h = [0	0	0	0	48791.06455	57810.31402	30346.83153	15930.20553	8362.37048	4389.726167	2304.334143	3110.012239]
hpred=[predator_sel1_h;predator_sel2_h]
prey_sel1_h = [0	4669828.897	5065212.043	4893781.618]
prey_sel2_h = [0	5080039.096	5722217.237	5948008.435]
hprey=[prey_sel1_h;prey_sel2_h]

%%%% PLOTS
subplot(2,2,1)
a=bar(predator_age, xpred)
legend('Selectivity mode 1', 'Selectivity mode 2','FontSize',18, 'location','north','Orientation','horizontal')
title('Predator age composition','FontSize',18)
xlabel('Age','FontSize',18)
ylabel('Individuals at age (thousands)','FontSize',18)
axis([2.5 14.5 0 800000])
ax = gca; 
ax.FontSize = 18; 

subplot(2,2,2)
bar(prey_age, xprey)
legend('Selectivity mode 1', 'Selectivity mode 2','FontSize',18, 'location', 'north','Orientation','horizontal')
title('Prey age composition','FontSize',18)
xlabel('Age')
ylabel('Individuals at age (thousands)','FontSize',18)
axis([0.5 4.5 0 70000000])
ax = gca; 
ax.FontSize = 18; 

subplot(2,2,3)
bar(predator_age, hpred)
legend('Selectivity mode 1', 'Selectivity mode 2','location', 'northwest','FontSize',18, 'location', 'north','Orientation','horizontal')
title('Predator harvest profile','FontSize',18)
xlabel('Age','FontSize',18)
ylabel('Individuals at age (thousands)','FontSize',18)
axis([2.5 14.5 0 80000])
ax = gca; 
ax.FontSize = 18; 

subplot(2,2,4)
bar(prey_age, hprey)
legend('Selectivity mode 1', 'Selectivity mode 2','location', 'northwest','FontSize',18, 'location', 'north','Orientation','horizontal')
title('Prey harvest profile','FontSize',18)
xlabel('Age','FontSize',18)
ylabel('Individuals at age (thousands)','FontSize',18)
axis([0.5 4.5 0 7500000])
ax = gca; 
ax.FontSize = 18; 