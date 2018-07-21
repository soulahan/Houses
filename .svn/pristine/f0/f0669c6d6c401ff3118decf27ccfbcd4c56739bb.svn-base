
package tools;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;


public class SaveCode {


	private char[] elements;

	private int width;

	private int height;

	private int length;

	private BufferedImage image;

	private String codeString;

	public SaveCode(char[] elements, int width, int height, int length) {
	
		this.elements = elements;

		this.width = width;
		
		this.height = height;

		this.length = length;
	}


	public void createSaveCodeImage() {
		
		image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		
		Graphics g = image.getGraphics();
		
		Random random = new Random();
		
		g.setColor(getRandColor(220, 250));
		
		g.fillRect(0, 0, width, height);
		
		g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
		
		
		g.draw3DRect(0, 0, width - 1, height - 1, true);
		
		
		for (int i = 0; i < 155; i++) {
			
			g.setColor(getRandColor(160, 200));
			
			int x = random.nextInt(width);
			
			int y = random.nextInt(height);
			
			int xl = random.nextInt(12);
		
			int yl = random.nextInt(12);
			
			g.drawLine(x, y, x + xl, y + yl);
		}
	
		codeString = "";
		
		for (int i = 0; i < length; i++) {
			
			char rand = elements[Math.abs(random.nextInt()) % elements.length];
			
			codeString += rand;
		
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110)));
			
			g.drawString(String.valueOf(rand), 13 * i + 6, 16);
		}
		
	
		g.dispose();

	}

	/**
	 * ��ȡ��֤��ͼƬ�ķ���
	 * 
	 * @return �����õ���֤��ͼƬ
	 * */
	public BufferedImage getImage() {
		// ������֤��ͼƬ
		return image;
	}

	/**
	 * ��ȡ��֤���ַ����ķ���
	 * 
	 * @return ���ɵ���֤���ַ���
	 * */
	public String getCodeString() {
		// ������֤���ַ���
		return codeString;
	}

	/**
	 * ������ɸ�������ɫ�ķ���
	 * 
	 * @param fc
	 *            ����ɫϵֵ
	 * @param bc
	 *            ɫϵƫ����ֵ
	 * @return �����õ������ɫ
	 * */
	private Color getRandColor(int fc, int bc) {
		// �����������
		Random random = new Random();
		// ����ɫϵֵ����
		if (fc > 255)
			// �޶�����ɫϵֵ���ֵ
			fc = 255;
		// ��ɫƫ����ֵ����
		if (bc > 255)
			// �޶���ɫƫ����ֵ���ֵ
			bc = 255;
		// ���ɵ������ɫ����ֵ
		int r = fc + random.nextInt(bc - fc);
		// ���ɵ������ɫ����ֵ
		int g = fc + random.nextInt(bc - fc);
		// ���ɵ������ɫ����ֵ
		int b = fc + random.nextInt(bc - fc);
		// �����������ɫ����
		return new Color(r, g, b);
	}

}
