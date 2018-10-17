import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Realboost {

	public static void main(String[] args) throws IOException,
			InterruptedException {
		FileReader fr = new FileReader(
				"C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/features_full.txt");
		BufferedReader br = new BufferedReader(fr);
		String line;
		// LinkedList<String> input = new LinkedList<String>();
		int rows = 9168, cols = 11838+25356;
		//int rows=1000;int cols=200;
		int len = 0;
		float features[][] = new float[rows][cols];
		while ((line = br.readLine()) != null) {
			String[] ip = line.split(",");
			for (int i = 0; i < ip.length; i++)
				features[len][i] = Float.parseFloat(ip[i]);
			len++;
		}
		br.close();
		System.out.println("Read File");

		int itr = 200;
		//int pos=100;
		int pos = 11838;
		double eps=Math.ulp(1);
		float[][] w = new float[itr + 1][];

		for (int i = 0; i < itr + 1; i++)
			w[i] = new float[cols];

		int[] hyp = new int[itr];
		float alpha[] = new float[itr];
		float[] thr = new float[itr];
		int[] pol = new int[itr];
		
		float ol = (float) (1.0/ cols);
		for (int lu = 0; lu < cols; lu++)
			w[0][lu] = ol;

		int nbins = 20;

		float[] weakerr1 = new float[rows];
		double[] weakerr2 = new double[rows];
		double[] weakerr3 = new double[rows];
		double[] weakerr4 = new double[rows];

		double[] hist10 = new double[cols];
		double[] hist50 = new double[cols];
		double[] hist100 = new double[cols];

		float binval[][] = new float[rows][nbins];
		double bindistr[][] = new double[rows][nbins];
		
		float minpt[][] = new float[itr][nbins];
		float minut[][] = new float[itr][nbins];

		float min, max;
		for (int c = 0; c < rows; c++) {
			min = features[c][0];
			max = features[c][0];
			for (int j = 1; j < cols; j++) {
				min = Math.min(min, features[c][j]);
				max = Math.max(max, features[c][j]);
			}
			for (int i = 0; i < nbins; i++) {
				binval[c][i] = min + (i + 1) * ((max - min) / (nbins));
			}

		}

		double zerr = Integer.MAX_VALUE;
		for (int u = 0; u < itr; u++) {
			zerr=Integer.MAX_VALUE;
			float pt[][] = new float[rows][nbins];
			float ut[][] = new float[rows][nbins];
			for (int c = 0; c < rows; c++) {
				for (int j = 0; j < cols; j++) {
					boolean flag=false;
					for (int i = 0; i < nbins; i++) {
						if (features[c][j] <= binval[c][i]) {
							//bindistr[c][i] = bindistr[c][i]+w[u][j];
							if (j < pos) {
								pt[c][i] = pt[c][i]+w[u][j];
							} else {
								ut[c][i] = ut[c][i]+w[u][j];
							}
							flag=true;
							break;
						}
					}
					if(!flag){
						int i=nbins-1;
						if (j < pos) {
							pt[c][i] = pt[c][i]+w[u][j];
						} else {
							ut[c][i] = ut[c][i]+w[u][j];
						}
					}

				}

				/*for (int i = 0; i < nbins; i++) {
					if (bindistr[c][i] < pos) {
						pt[c][i] = bindistr[c][i];
					} else {
						ut[c][i] = bindistr[c][i];
					}
				}*/
				double sum = 0;
				for (int i = 0; i < nbins; i++) {
					sum = sum + Math.sqrt(pt[c][i] * ut[c][i]);
				}
				double temp = 2 * sum;
				if (zerr > temp) {
					zerr = temp;
					//System.out.println(u+"\t"+zerr+"\t"+temp);
					hyp[u] = c;
					for (int i = 0; i < nbins; i++) {
						minpt[u][i] = pt[c][i];
						minut[u][i] = ut[c][i];
					}
				}
			}
			
			
			int yi = 0;
			for (int i = 0; i < cols; i++) {
				if (i < pos)
					yi = 1;
				else
					yi = -1;
				float h = features[hyp[u]][i];
				int b = 0;
				boolean flag=false;
				for (int j = 0; j < nbins; j++) {
					if (h <= binval[hyp[u]][j]) {
						b = j;
						flag=true;
						break;
					}
				}
				
				if(!flag){
					b=nbins-1;
					}
				
				
				double ht = (0.5) * (Math.log((minpt[u][b]+eps) / (minut[u][b]+eps)));
				w[u + 1][i] = (float) (w[u][i] * Math.exp(-1 * yi * ht));
			}
			double weightsum = 0;
			for (int i = 0; i < cols; i++) {
				weightsum = weightsum + w[u + 1][i];
			}
			for (int i = 0; i < cols; i++) {
				w[u + 1][i] = (float) (w[u + 1][i] / weightsum);
			}

			double strongerr = 0;
			for (int j1 = 0; j1 < cols; j1++) {
				double val = 0;
				for (int i = 0; i <= u; i++) {
					int b = 0;
					boolean flag=false;
					for (int j = 0; j < nbins; j++) {
						if (features[hyp[i]][j1] <= binval[hyp[i]][j]) {
							b = j;
							flag=true;
							break;
						}
					}
					if(!flag){
						b=nbins-1;
						}
					val = val + (0.5) * (Math.log((minpt[i][b]+eps) / (minut[i][b]+eps)));
				}
				if(u==9){
					hist10[j1]=val;
				}
				else if(u==49){
					hist50[j1]=val;
				}
				else if(u==99){
					hist100[j1]=val;
				}
				if (val > 0 && j1 > pos) {
					strongerr = strongerr + 1;
				}
				if (val < 0 && j1 < pos) {
					strongerr = strongerr + 1;
				}
			}
			System.out
			.println(u + "\t" + hyp[u] + "\t" + zerr+"\t"+strongerr/cols);
			/*for(int hu=0;hu<nbins;hu++){
			System.out.print(minpt[u][hu]+" ");
			}
			System.out.println();
			for(int hu=0;hu<nbins;hu++){
				System.out.print(minut[u][hu]+" ");
				}
			System.out.println();
			System.out.println();*/
		}
		
		FileWriter fw=new FileWriter("C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/realhist10.txt");
		BufferedWriter bw=new BufferedWriter(fw);
		
		for(int yt=0;yt<cols;yt++){
			bw.write(Double.toString(hist10[yt]));
			bw.newLine();
		}
		bw.close();
		
		fw=new FileWriter("C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/realhist50.txt");
		bw=new BufferedWriter(fw);
		
		for(int yt=0;yt<cols;yt++){
			bw.write(Double.toString(hist50[yt]));
			bw.newLine();
		}
		bw.close();
		
		fw=new FileWriter("C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/realhist100.txt");
		bw=new BufferedWriter(fw);
		
		for(int yt=0;yt<cols;yt++){
			bw.write(Double.toString(hist100[yt]));
			bw.newLine();
		}
		bw.close();

		/*
		 * double err = Double.MAX_VALUE;
		 * 
		 * int count = 0; int h = 0;
		 * 
		 * for (int c=0;c<rows;c++) {
		 * 
		 * 
		 * double rowerr=Integer.MAX_VALUE;
		 * 
		 * //String[] str = l.split(",");
		 * 
		 * // System.out.println(str.length +"\t" + //
		 * Double.parseDouble(str[0]));
		 * 
		 * double min = Integer.MAX_VALUE, max = Integer.MIN_VALUE;
		 * 
		 * for (int i = 0; i < cols; i++) { if (features[c][i] > max) max
		 * =features[c][i]; if (features[c][i] < min) min = features[c][i]; } //
		 * System.out.println("Min:"+min+"\t"+"max:"+max);
		 * 
		 * double fac = (max - min) / nbins;
		 * 
		 * for (double j = min + fac; j < max; j = j + fac) {
		 * 
		 * double temperr = 0;
		 * 
		 * int sign = 1;
		 * 
		 * for (int i = 0; i < cols; i++) { if (features[c][i] > j && i > pos) {
		 * temperr = temperr + w[u][i]; //
		 * System.out.println("1:\t"+w[u][i]+"\t"+temperr); }
		 * 
		 * if (features[c][i] < j && i < pos) { temperr = temperr + w[u][i]; //
		 * System.out.println("2:\t"+w[u][i]+"\t"+temperr); }
		 * 
		 * } // Thread.sleep(200); if (err > temperr) { //
		 * System.out.println("hey" + temperr + err); h = count; err = temperr;
		 * thr[u] = j; pol[u] = sign; } rowerr=Math.min(rowerr, temperr);
		 * temperr = 0;
		 * 
		 * sign = -1; for (int i = 0; i < cols; i++) { if (features[c][i] < j &&
		 * i > pos) { temperr = temperr + w[u][i]; }
		 * 
		 * if (features[c][i] > j && i < pos) { temperr = temperr + w[u][i]; } }
		 * 
		 * if (err > temperr) { h = count; err = temperr; thr[u] = j; pol[u] =
		 * sign; } rowerr=Math.min(rowerr, temperr);
		 * 
		 * } if(u==0){ weakerr1[c]=rowerr; } else if(u==9){ weakerr2[c]=rowerr;
		 * } else if(u==49){ weakerr3[c]=rowerr; } else if(u==99){
		 * weakerr4[c]=rowerr; }
		 * 
		 * count++; }
		 * 
		 * 
		 * 
		 * hyp[u] = h;
		 * 
		 * alpha[u] = 0.5 * (Math.log((1 - err) / err));
		 * 
		 * //String[] yu = input.get(h).split(","); double sum = 0; for (int h1
		 * = 0; h1 < cols; h1++) { int tr = 0; if (features[h][h1] > thr[u]) tr
		 * = 1 * pol[u]; else tr = -1 * pol[u];
		 * 
		 * if (h1 < pos) w[u + 1][h1] = w[u][h1] * Math.exp(-alpha[u] * tr);
		 * 
		 * else w[u + 1][h1] = w[u][h1] * Math.exp(alpha[u] * tr);
		 * 
		 * sum = sum + w[u + 1][h1];
		 * 
		 * }
		 * 
		 * for (int h1 = 0; h1 < cols; h1++) { w[u + 1][h1] = w[u + 1][h1] /
		 * sum; }
		 * 
		 * double strongerr = 0, val = 0; // Strong Classifier Error for (int i
		 * = 0; i < cols; i++) {
		 * 
		 * val = 0; for (int er = 0; er <= u; er++) { //String[] ylu =
		 * input.get(hyp[er]).split(",");
		 * 
		 * int tr = 0;
		 * 
		 * if (features[hyp[er]][i] > thr[er]) tr = 1 * pol[er]; else tr = -1 *
		 * pol[er];
		 * 
		 * val = val + (tr * alpha[er]);
		 * 
		 * } if (val < 0 && i < pos) strongerr = strongerr + 1; if (val > 0 && i
		 * > pos) strongerr = strongerr + 1;
		 * 
		 * if(u==9){ hist10[i]=val; } else if(u==49){ hist50[i]=val; } else
		 * if(u==99){ hist100[i]=val; }
		 * 
		 * }
		 * 
		 * System.out .println(u + "\t" + hyp[u] + alpha[u]+"\t"+
		 * thr[u]+"\t"+pol[u]+":\t" + err + "\t" + strongerr/cols); }
		 * 
		 * FileWriter fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfweakerr0.txt"
		 * ); BufferedWriter bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<rows;yt++){ bw.write(Double.toString(weakerr1[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfweakerr10.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<rows;yt++){ bw.write(Double.toString(weakerr2[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfweakerr50.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<rows;yt++){ bw.write(Double.toString(weakerr3[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfweakerr100.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<rows;yt++){ bw.write(Double.toString(weakerr4[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfhist10.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<cols;yt++){ bw.write(Double.toString(hist10[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfhist50.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<cols;yt++){ bw.write(Double.toString(hist50[yt]));
		 * bw.newLine(); } bw.close();
		 * 
		 * fw=new FileWriter(
		 * "C:/Users/Sasank/Downloads/Masters/PR&ML/project2_code_and_data/nfhist100.txt"
		 * ); bw=new BufferedWriter(fw);
		 * 
		 * for(int yt=0;yt<cols;yt++){ bw.write(Double.toString(hist100[yt]));
		 * bw.newLine(); } bw.close();
		 */
	}
}
