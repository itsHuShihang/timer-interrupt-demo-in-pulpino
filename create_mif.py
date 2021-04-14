
with open("ext_mem.dat", "r") as f1 :
	with open("ext_mem.mif", "w") as f2 :
		f2.write("% multiple-line comment\n")
		f2.write("multiple-line comment %\n")
		f2.write("-- single-line comment\n")
		f2.write("DEPTH = 4096;                  --The size of data in bits\n")
		f2.write("WIDTH = 32;                     --The size of memory in words\n")
		f2.write("ADDRESS_RADIX = HEX;            --The radix for address values\n")
		f2.write("DATA_RADIX = HEX;               --The radix for data values\n")
		f2.write("\n")
		f2.write("CONTENT                        --start of (address : data pairs)\n")
		f2.write("BEGIN\n")
		i = 0
		while 1 :
			line = f1.readline()
			if not line :
				break
			f2.write(hex(i)[2:] + " : " + line[0:len(line) - 1] + ";\n")
			i = i + 1
		f2.write("END;\n")