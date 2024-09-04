#include <stdio.h>

int main(void)
{
	//%[0-1]{8}
	int lcdc_md[8];
	int lcdc_gb[8] = {1, 1, 1, 0, 0, 1, 0, 0};
	for (int i = 7; i >= 0; i--)
		lcdc_md[i] = lcdc_gb[7-i]; 
	for (int i = 7; i >= 0; i--)
		printf("%d", lcdc_md[i]);
	printf("\n%d%d%d%d%d%d%d%d\n", lcdc_md[7], lcdc_md[0], lcdc_md[5], lcdc_md[4], lcdc_md[6], lcdc_md[3], lcdc_md[2], lcdc_md[1]);
	return 0;
}
