myFolder = 'D:\Visualizing Metrics\Visualizing Metrics';
toplot = 1;
imp = double(imread([myFolder,'\0020p.jpg']));
imb = double(imread([myFolder,'\0020b.jpg']));
imc = double(imread([myFolder,'\0020c.jpg']));
[resMap1,figtitle1] = visualize_NSS(imp,imb,toplot);
[resMap2,figtitle2] = visualize_CC(imp,imc,toplot);
[resMap3,figtitle3] = visualize_EMD(imp,imc,toplot);
[resMap4,figtitle4] = visualize_SIM(imp,imc,toplot);
[resMap5,figtitle5] = visualize_KL(imp,imc,toplot); 
[resMap,resMap_pos,resMap_neg,resMap2] = visualize_IG(imc, imp, imb, toplot); %What is base map?
visualize_AUC(imp,imb)