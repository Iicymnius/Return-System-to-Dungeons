
quest seytan_katakombu begin 
	state start begin
		when login begin
		
			if pc.getqf ("katakombfix") == 1 then
				pc.setqf ("katakombfix",0)
			end
			
			local idx = pc.get_map_index()
			if idx >= (216 * 10000) and idx < ((216 + 1) * 10000) then
				pc.set_dungeonindex(d.get_map_index())
				pc.setqf("dungeonorgindex",216)
				pc.setqf("dungeon_ch",pc.get_channel_id())
				local level = d.getf("level")
				d.set_warp_location (0, 0, 0)
					
				if level == 2 then
					say("3. kata ula�mak i�in bu kap�lar�n m�h�rlerini s�k!")
					say("60 dakikan daha var.")
					pc.setqf ("katakombfix",1)
				elseif level >= 3 then
					if pc.getqf("katakombfix") != 1 and pc.getqf("dungeon_enter") != 1 then
						chat("Karakter at�p bug yapt���n i�in giri�e ���nlanacaks�n !")
						pc.warp(591700,99600)
						return
					end
					
				elseif level == pc.getqf ("level") then
				else
				end
			end
			if idx == 216 then
				if pc.get_x() < 20 + 3072
					or pc.get_y() < 20 + 12032
					or pc.get_x() > 500 + 3072
					or pc.get_y() > 470 + 12032
				then
						timer ("devilcatacomb_ban_timer", 5)
				else 
					say("Ruh Kristali Anahtar�'n� ele ge�irmek i�in ")
					say("yarat�klar� yok et. Bu ")
					say("sana sonraki kat�n kap�s�n� a�ar. ")
					pc.remove_item(30311, pc.count_item(30311))
					pc.remove_item(30312, pc.count_item(30312))
				end
			end
		end

		when devilcatacomb_ban_timer.timer begin
			pc.warp((5914)*100, (992)*100, 65)
		end
		when 20367.chat."Kald���n Yerden Devam Et" with d.find(pc.get_dungeonindex()) begin
			if pc.getqf("dungeonorgindex") != 216 then
				say("Son girdi�in zindan buras� de�il!")
				return
			end
			if pc.getqf("dungeon_ch") != pc.get_channel_id() then
				say("Zindana girdi�in ch buras� de�il!")
				return
			end
			local n = pc.get_dungeonindex()
			local oldumu = d.getf_from_map_index("catacomb_dead", n)
			local levelcatacomb = d.getf_from_map_index("levelcatacomb", n)
			if levelcatacomb < 2 then
				say("2. kata gelmedi�in i�in giri� yapamazs�n.")
				return
			end

			if oldumu == 1 then
				say_npc()
				say("Catacombu zaten yok etmi�sin.")
				return
			end
			if n == 0 then
				setskin(NOWINDOW)
				return
			end
			if levelcatacomb == 2 then
				say_npc()
				say("G�r�n��e g�re 2. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[2-1][1] + 3072 )* 100, (special.catacomb_dungeon[2-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 3 then
				say_npc()
				say("G�r�n��e g�re 3. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[3-1][1] + 3072 )* 100, (special.catacomb_dungeon[3-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 4 then
				say_npc()
				say("G�r�n��e g�re 4. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[4-1][1] + 3072 )* 100, (special.catacomb_dungeon[4-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 5 then
				say_npc()
				say("G�r�n��e g�re 5. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[5-1][1] + 3072 )* 100, (special.catacomb_dungeon[5-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 6 then
				say_npc()
				say("G�r�n��e g�re 6. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[6-1][1] + 3072 )* 100, (special.catacomb_dungeon[6-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 7 then
				say_npc()
				say("G�r�n��e g�re 7. katta catacombdan ayr�ld�n, sana yard�mc� olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[7-1][1] + 3072 )* 100, (special.catacomb_dungeon[7-1][2] + 12032) * 100,n)
				end
			end
		end
		when 20367.chat."�eytan Katakombu'na gider" with pc.get_map_index() == 65 begin 
			if pc.level < 75 then 
				say_title("Katakomb Bek�isi:") 
				say("75. seviyenin alt�nda oldugun i�in") 
				say("katakombu ba�aramazs�n..") 
				return 
			end
			say("�eytan�n �nine �imdi girmek istiyor musun?") 
			local s = select("Evet", "Girme") 
			if s == 1 then 
				pc.warp(315200,1209200) 
				return 
			end
		end
		when login with pc.get_map_index() == 216 begin 
		say("Ruh Kristali Anahtar�'n� ele ge�irmek i�in ")
		say("yarat�klar� yok et. Bu ")
		say("sana sonraki kat�n kap�s�n� a�ar. ")
		pc.remove_item(30311, pc.count_item(30311))
		pc.remove_item(30312, pc.count_item(30312)) 
		pc.set_warp_location(65 , 5913, 995)
		end 
		when 2503.kill or 
				2504.kill or 
				2505.kill begin 
			local rka = number(1,10) 
		if rka==1 then 
		game.drop_item(30311, 1) 
		end
		end 
		when 30101.take with item.vnum == 30311 begin 
		item.remove() 
		say("M�h�rl� kap� a��ld�. Acele et,")
		say("a�a�� iniyoruz.")
		wait()
		say("As�l macera �imdi ba�l�yor. �eytan ")
		say("Katakombu'nu ke�fetmek i�in sadece")
		say("bir saatin var.")
		wait()
		d.new_jump_all(216, 3622, 12079) 
		d.setf("catacomb_kat2", 1) 
		end 
		 
		when login with pc.in_dungeon() and d.getf("catacomb_kat2") == 1 begin 
		d.regen_file("data/dungeon/katakomb/catacomb_kat2.txt") 
		timer("catacomb_5dakika", 3300) 
		timer("catacomb_10dakika", 3000) 
		timer("catacomb_20dakika", 2400) 
		timer("catacomb_30dakika", 1800) 
		timer("catacomb_45dakika", 900) 
		timer("catacomb_bitti", 3600) 
		pc.set_warp_location(65 , 5913, 995)
		d.setf("level", 2)
		d.setf("levelcatacomb", 2)
		end 
		 
		when 30103.click begin
		if d.getf("devilcatacomb_floor2_stone_clicked") == 0 then
		say("Kaplumba�a Kayal���'na yakla�t�k�a ")
		say("baz� grav�rler dikkat �ekiyor... ")
		wait()
		say("...Sadece K���len Kafa'ya sahip olanlar")
		say("bir sonraki kademeye ge�ebilirler. ")
		say("K���len Kafa'ya sahip de�ilsen yer y�z�ne")
		say("���nlanacaks�n.")
		wait()
		local s = select("Evet, ge�ece�im!", "Hay�r, ge�mek istemiyorum.")
		if s == 1 then
		if d.getf("devilcatacomb_floor2_stone_clicked") == 0 then
		d.setf("devilcatacomb_floor2_stone_clicked", 1)
		pc.remove_item(30319) 
		timer("katakomb_kat_3", 3) 
		end
		end
		else
		say_title("Devil�s Catacomb:")
		say ("")
		say ("L�tfen bekle.")
		say ("")
		end
		end
		
		 
		when katakomb_kat_3.timer begin 
		d.jump_all(3072+1376, 12032+250) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat3.txt") 
		notice_in_map("Ger�ek Misilleme Metinini bul ve yok et!") 
		d.setf("catacomb_metin", 2) 
		d.setf("level", 3)
		d.setf("levelcatacomb", 3)
		end 

		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 2 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 3) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 3 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 4) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 4 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 5) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 5 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 6) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 6 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 7) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 7 begin 
			notice_in_map("Bu Metin ta�� sahte, ger�e�ini bul.") 
		d.setf("catacomb_metin", 8) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 8 begin 
		notice_in_map("Ger�ek Metin ta�� yokedildi. 4. seviyeye h�zl� bir �ekilde devam edelim.") 
			timer("catacomb_labirent", 5) 
			end 
			 
		when catacomb_labirent.timer begin 
		d.setf("level", 4) 
		d.setf("levelcatacomb", 4)
		d.jump_all(3072+70, 12032+585) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat4.txt") 
		notice_in_map("5. seviyeye ula�mak i�in labirentte yolunuzu bulun!") 
			local lab = number(1,4) 
			if lab == 1 then 
		d.regen_file("data/dungeon/katakomb/catacomb_warps1.txt") 
			end 
			if lab == 2 then 
		d.regen_file("data/dungeon/katakomb/catacomb_warps2.txt") 
			end 
			if lab == 3 then 
		d.regen_file("data/dungeon/katakomb/catacomb_warps3.txt") 
			end 
			if lab == 4 then 
		d.regen_file("data/dungeon/katakomb/catacomb_warps4.txt") 
			end 
		end 
		 
		when 30104.chat."5. seviyeye ilerle" begin 
		say("�eytan ruhlar�n� hissedebiliyor musun?") 
			wait() 
		say("Devam etmek istiyor musun?") 
		wait() 
			timer("katakomb_kat_5", 6) 
		end 
		 
		when katakomb_kat_5.timer begin 
		d.setf("level", 5) 
		d.setf("levelcatacomb", 5)
		d.jump_all(3072+846, 12032+898) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat5.txt") 
		notice_in_map("Tartoruslar� yen ve alt�nc� seviyeye ge�ebilmek i�in Surat Totemini ele ge�irin.") 
			local gar = number(1,5) 
			if gar == 1 then 
		d.regen_file("data/dungeon/katakomb/catacomb_boss1.txt") 
			end 
			if gar == 2 then 
		d.regen_file("data/dungeon/katakomb/catacomb_boss2.txt") 
			end 
			if gar == 3 then 
		d.regen_file("data/dungeon/katakomb/catacomb_boss3.txt") 
			end 
			if gar == 4 then 
		d.regen_file("data/dungeon/katakomb/catacomb_boss4.txt") 
			end 
			if gar == 5 then 
		d.regen_file("data/dungeon/katakomb/catacomb_boss5.txt") 
			end 
		end 

		when 2591.kill begin 
			local tar = number(1,1) 
		if tar==1 then 
		game.drop_item(30312, 1) 
			end 
		end 
		 
		when 30102.take with item.vnum == 30312 begin 
		notice_in_map("Uzaklardan ulumalar� duyuluyor. Gaddar Azrail'i uyand�rd�n�z.") 
		item.remove() 
		npc.purge() 
			timer("catacomb_kat_6", 6) 
		end 
		 
		when catacomb_kat_6.timer begin 
		d.setf("level", 6) 
		d.setf("levelcatacomb", 6)
		d.jump_all(3072+1358, 12032+671) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat6.txt") 
		notice_in_map("Kharoon ve di�er t�m d��manlar� yenin!") 
		end 
		 
		when 2597.kill begin 
		d.kill_all() 
		timer("catacomb_1kharoon", 2) 
		end 
		 
		when catacomb_1kharoon.timer begin 
		say("Kharoon'u �ld�rd�n. Ma�aran�n en son") 
		say("seviyesine ���nlan�yorsunuz.") 
			timer("catacomb_kharoon", 2) 
		end 
		 
		when catacomb_kharoon.timer begin 
		d.setf("level", 7) 
		d.setf("levelcatacomb", 7)
		d.jump_all(3072+73, 12032+1157) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat7.txt") 
		notice_in_map("Azrail'i yenin!") 
		end 
		 
		when 2598.kill begin
			d.setf("catacomb_dead",1)
			d.kill_all() 
			timer("catacomb_1azrail", 2) 
		end 

		when catacomb_1azrail.timer begin 
		say("Azrail yenildi. Devil's Catacomb'a nihayet") 
		say("huzur hakim. �imdi yery�z�ne ���nlanacaks�n.") 
			timer("catacomb_azrail", 30) 
		end 
		 
		when catacomb_5dakika.timer begin 
		notice_in_map("Kalan s�re: 5 dakika") 
				end 
		 
		when catacomb_10dakika.timer begin 
		notice_in_map("Kalan s�re: 10 dakika") 
				end 
		 
		when catacomb_20dakika.timer begin 
		notice_in_map("Kalan s�re: 20 dakika") 
				end 
		 
		when catacomb_30dakika.timer begin 
		notice_in_map("Kalan s�re: 30 dakika") 
				end 
		 
		when catacomb_45dakika.timer begin 
		notice_in_map("Kalan s�re: 45 dakika") 
			d.exit_all() 
				end 
		 
		when catacomb_bitti.timer begin 
		game.set_event_flag("kuleazrail",0) 
		notice_in_map("S�re bitti!") 
			d.exit_all() 
				end 
		 
		when catacomb_azrail.timer begin 
			d.exit_all() 
				end 
	end
end  