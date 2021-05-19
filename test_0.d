module test_0;

import std;
bool newln() {writeln("\n"); return 0;};

int main()
{
    writeln("-- hesap makinesi -- \n");
    writeln("topla + \ncikar - \ncarp * \nbol / \ncikmak icin = exit \nekrani temizlemek icin = clear \n");
    int sayi_1 = 0, sayi_2 = 0;
    string islem, get;

    while (1) {
        get = readln();
        if(get == "exit\n")
            break;
        else if(get == "clear\n") {
            spawnShell("cls").wait;
			writeln("-- hesap makinesi -- \n");
			writeln("topla + \ncikar - \ncarp * \nbol / \ncikmak icin = exit \nekrani temizlemek icin = clear \n");
            goto exit;
		};
        sayi_1 = parse!int(get);
        get = readln();
        if(get == "exit\n")
            break;
        else if(get == "clear\n") {
            spawnShell("cls").wait;
			writeln("-- hesap makinesi -- \n");
			writeln("topla + \ncikar - \ncarp * \nbol / \ncikmak icin = exit \nekrani temizlemek icin = clear \n");
            goto exit;
		};
        sayi_2 = parse!int(get);
        islem = readln();
        if(islem == "exit\n")
            break;
        else if(islem == "clear\n") {
            spawnShell("cls").wait;
			writeln("-- hesap makinesi -- \n");
			writeln("topla + \ncikar - \ncarp * \nbol / \ncikmak icin = exit \nekrani temizlemek icin = clear \n");
            goto exit;
		};
        if (islem == "+\n" || islem == "topla\n")
            writeln(" = ", sayi_1 + sayi_2);
        else if (islem == "-\n" || islem == "cikar\n")
            writeln(" = ", sayi_1 - sayi_2);
        else if (islem == "*\n" || islem == "carp\n")
            writeln(" = ", sayi_1 * sayi_2);
        else if (islem == "/\n" || islem == "bol\n")
            writeln(" = ", sayi_1 / sayi_2);
        else
            writeln("hatali islem!!");
        exit:;
	};
    return 0;
}
