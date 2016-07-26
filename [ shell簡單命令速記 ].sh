# shell 命令解釋:

# 實用程序 參數 參數 | 實用程序 參數 參數 | 實用程序 參數 > 文件

exit / logout / < Ctrl + D > 	# 退出當前系統

clear			# 清空屏幕

< Backspace > / < Delete > / < Ctrl + H >	# 使光標回退

date			# 顯示日期

	date > today	# 創建一個新的文件 將進程輸出連接到文件
			          # 並使進程運行 date 的代碼

cal			# 查看當前日曆 後面可以追家年份 如 cal 2013
	
	cal 5 2013		#查尋 2013 年 五月份日曆

	cal 5 2013 > file	# 將實用程序輸出連接到 file 文件

who 			# 查尋當前用互信息	

	who > users on	# 會創建一個名為 users 的文件

	who > user 	# 實用程序輸出連接到文件 user

more file			# 將文件名為 file 的文件內容顯示出來

	more file1 > file2	# 將 file1 文件內容 重定向到 file2 文件中
	
	more file1 file2 	# 分別顯示出 file1 file2 文件內容 並用如下方式分割
			
			# :::::::::::::::::::::::::::::::::

			# file1

			# :::::::::::::::::::::::::::::::::

			file2

			# ::::::::::::::::::::::::::::::::

wc file			# 統計文件中 行數 單詞數 和字符數

	wc -l file		# 統計行數
	
	wc -w file		# 統計單字數
	
	wc -c file		統計字符數
	
	wc file1 file2 	# 分別對 file1 file2 做統計並總計

	man wc		# 查看 wc 命令用法 內容如下

			wc [option] ... [file]
				
				-c, --bytes
	 		
					# print the bytes counts

				-m, --chars
					# print the character counts

				-l, --lines
					# print the newline counts

				-L, --words
					# print the word counts

				--help 	
					display this help and exit

				--version
					# output version information and exit

ls			# 可以列出當前目錄中的文件

	ls > myfiles	# 創建一個名為 myfiles 的文件

	ls -l 		# 列出當前目錄中的文件 
	          # 並列出權限和其他文件信息

	ls -a		# 列出當前目錄所有文件 
	        # 包括帳戶有關的 "點文件" ( 系統管理文件 )

!!			# 重複運行最後一條命令

	date		# 重複運行 date 命令
	!! / r

! + [ comand ] / r + [ comand ]	# 再次運行歷史命令

history			# 列出用戶所有運行過命令

	set history=100	# 保存用戶最近使用 100 條歷史命令

	!h		# 查看歷史命令列表

	!27		# 運行命令列表序號 27 號命令

	!W		# 執行最後一條以 w 開頭命令

alias "key"=[ command name ]	# 創建命令別名

	alias now=date	# 創建 date 命令別名 == now  
			            # 之後鍵入 now 如同鍵入 date

	unalias now	# 取消命令別名 now

	alias		# 列出當前所有命令別名

ps			# 得到當前進程列表

	ps -aux / ps -ef	# 顯示整個系統所有運行進程信息

pwd			# 辨別用戶當前目錄

date | wc / more file | wc / who | wc -l 	# 將程序輸出重定向(輸出)到另一個程序(輸入)

head file			# 讀出文件內容前 10 行 ( 默認 10 行 )
	
	head -6 file		# 讀出文件內容前 6 行

	head -6 file1 file2 	# 分別讀出文件內容前 6 行 用 
			                  # ==> file <== 分隔
		
tail file			# 讀出文件內容末 10 行

	tail -6 file		# 輸出文件末尾 6 行


cat file			# 作用和 more 相似

			more # 以一屏方式顯示內容 
			     # 可用空白鍵捲動	

	cat -n file		# 文件顯示內容 前面標上列號
			          # 不影響原文件

cp file file2			# 創建文件 file 副本 並命名為 file2
			            # 若文件 file2 已存在則會被覆蓋

	cp -i file file2	# 功能同上 唯 file2 存在時 
	                  # 會出現是否繼續提示信息

mv file newfile		# 將 file 重命名為 newfile

rm file			# 刪除文件 file

	rm -i file		# 功能同上 於刪除前出現提示信息

	rm file1 file2	# 一次性刪除多個文件

	rm -rf direcname	# 刪除目錄

sort			# 對文件進行排序

	cal 5 2014 > month;	sort # 將 month 文件讀入內存 並對文件行進行排序
	more month;	             # 後顯示在屏幕上 
	sort month;	

	sort file1 file2	# 讀入兩個文件內容並排序
				            # 在屏幕輸出文件所有內容統一排序 ( 注意和 wc 命令區別 )
				            # 默認是以 ASCII 碼順序進行排序字典排序
				
	sort -r month	# 逆向排序

	sort		# 若不指定輸入文件 則使用 STD ( 鍵盤輸入 ) 作為排序內容
			    # 並以 EOF 結束內容輸入 ( < Ctrl + D > ) 
				  # wc 命令類似

	sort > newfile # 將 鍵盤輸入排序結果重定向到新文件 newfile 中
				cat \ wc # 命令同理

	sort -f newfile	# 不區分大小寫進行排序

	sort -n newfile	# 以 數值大小 進行排序
			
	sort -rn newfile	# 進行數值大小逆序排序

	sort -k 2 newfile	# 使用第二字段 / 屬性進行排序

	sort file -o file1	# 對 file進行排序後 
	                    # 將輸出結果加在 file1 內容後

echo abcdefg		# 將字符串內容 "abcdefg" 顯示在屏幕上

	echo abcdefg > file	# 同上 並將結果重定向到 file 文件中

grep 			# 在文件中定位特定行

	grep str file		# 選擇 file 文件中所有包含 "str" 內容的行輸出到文件 file

	grep str file1 file2 file3	 # 一次查找多個包含 "str" 內容的文件

	grep -v is file	# 查找 "不" 包含 "is" 內容的文件

	grep		# 當沒有文件做為查找輸入時 
	        # 默認從鍵盤輸入獲取查找內容

	grep 'who are you' file	# 將 '' 中內容看做一個參數傳給 grep

	grep -i who file	# 忽略大小寫 在 file 中 查找 有 "who" 內容的行

	grep -l str file	# 列出包含目標字符串 "str" 的文件名

	grep -n str file	# 列出包含目標字符串的行號及匹配成功文本內容

	grep '^a' file	# 列出所有以字母 a 開頭的行
	
	grep '\^a' file	列出包含目標字符串 "^a" 內容的行

	grep 'a$' file	# 選中所有以字母 a 結尾的行

			

 
