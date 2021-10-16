
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
					say("3. kata ulaþmak için bu kapýlarýn mühürlerini sök!")
					say("60 dakikan daha var.")
					pc.setqf ("katakombfix",1)
				elseif level >= 3 then
					if pc.getqf("katakombfix") != 1 and pc.getqf("dungeon_enter") != 1 then
						chat("Karakter atýp bug yaptýðýn için giriþe ýþýnlanacaksýn !")
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
					say("Ruh Kristali Anahtarý'ný ele geçirmek için ")
					say("yaratýklarý yok et. Bu ")
					say("sana sonraki katýn kapýsýný açar. ")
					pc.remove_item(30311, pc.count_item(30311))
					pc.remove_item(30312, pc.count_item(30312))
				end
			end
		end

		when devilcatacomb_ban_timer.timer begin
			pc.warp((5914)*100, (992)*100, 65)
		end
		when 20367.chat."Kaldýðýn Yerden Devam Et" with d.find(pc.get_dungeonindex()) begin
			if pc.getqf("dungeonorgindex") != 216 then
				say("Son girdiðin zindan burasý deðil!")
				return
			end
			if pc.getqf("dungeon_ch") != pc.get_channel_id() then
				say("Zindana girdiðin ch burasý deðil!")
				return
			end
			local n = pc.get_dungeonindex()
			local oldumu = d.getf_from_map_index("catacomb_dead", n)
			local levelcatacomb = d.getf_from_map_index("levelcatacomb", n)
			if levelcatacomb < 2 then
				say("2. kata gelmediðin için giriþ yapamazsýn.")
				return
			end

			if oldumu == 1 then
				say_npc()
				say("Catacombu zaten yok etmiþsin.")
				return
			end
			if n == 0 then
				setskin(NOWINDOW)
				return
			end
			if levelcatacomb == 2 then
				say_npc()
				say("Görünüþe göre 2. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[2-1][1] + 3072 )* 100, (special.catacomb_dungeon[2-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 3 then
				say_npc()
				say("Görünüþe göre 3. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[3-1][1] + 3072 )* 100, (special.catacomb_dungeon[3-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 4 then
				say_npc()
				say("Görünüþe göre 4. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[4-1][1] + 3072 )* 100, (special.catacomb_dungeon[4-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 5 then
				say_npc()
				say("Görünüþe göre 5. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[5-1][1] + 3072 )* 100, (special.catacomb_dungeon[5-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 6 then
				say_npc()
				say("Görünüþe göre 6. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[6-1][1] + 3072 )* 100, (special.catacomb_dungeon[6-1][2] + 12032) * 100,n)
				end
			end
			if levelcatacomb == 7 then
				say_npc()
				say("Görünüþe göre 7. katta catacombdan ayrýldýn, sana yardýmcý olmak istiyorum.")
				say_sari("Catacomba devam etmek istiyor musun?")
				if select(locale.yes,locale.no) == 1 then
					pc.setqf("dungeon_enter",1)
					pc.warp((special.catacomb_dungeon[7-1][1] + 3072 )* 100, (special.catacomb_dungeon[7-1][2] + 12032) * 100,n)
				end
			end
		end
		when 20367.chat."Þeytan Katakombu'na gider" with pc.get_map_index() == 65 begin 
			if pc.level < 75 then 
				say_title("Katakomb Bekçisi:") 
				say("75. seviyenin altýnda oldugun için") 
				say("katakombu baþaramazsýn..") 
				return 
			end
			say("Þeytanýn Ýnine þimdi girmek istiyor musun?") 
			local s = select("Evet", "Girme") 
			if s == 1 then 
				pc.warp(315200,1209200) 
				return 
			end
		end
		when login with pc.get_map_index() == 216 begin 
		say("Ruh Kristali Anahtarý'ný ele geçirmek için ")
		say("yaratýklarý yok et. Bu ")
		say("sana sonraki katýn kapýsýný açar. ")
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
		say("Mühürlü kapý açýldý. Acele et,")
		say("aþaðý iniyoruz.")
		wait()
		say("Asýl macera þimdi baþlýyor. Þeytan ")
		say("Katakombu'nu keþfetmek için sadece")
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
		say("Kaplumbaða Kayalýðý'na yaklaþtýkça ")
		say("bazý gravürler dikkat çekiyor... ")
		wait()
		say("...Sadece Küçülen Kafa'ya sahip olanlar")
		say("bir sonraki kademeye geçebilirler. ")
		say("Küçülen Kafa'ya sahip deðilsen yer yüzüne")
		say("ýþýnlanacaksýn.")
		wait()
		local s = select("Evet, geçeceðim!", "Hayýr, geçmek istemiyorum.")
		if s == 1 then
		if d.getf("devilcatacomb_floor2_stone_clicked") == 0 then
		d.setf("devilcatacomb_floor2_stone_clicked", 1)
		pc.remove_item(30319) 
		timer("katakomb_kat_3", 3) 
		end
		end
		else
		say_title("Devil´s Catacomb:")
		say ("")
		say ("Lütfen bekle.")
		say ("")
		end
		end
		
		 
		when katakomb_kat_3.timer begin 
		d.jump_all(3072+1376, 12032+250) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat3.txt") 
		notice_in_map("Gerçek Misilleme Metinini bul ve yok et!") 
		d.setf("catacomb_metin", 2) 
		d.setf("level", 3)
		d.setf("levelcatacomb", 3)
		end 

		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 2 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 3) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 3 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 4) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 4 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 5) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 5 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 6) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 6 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 7) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 7 begin 
			notice_in_map("Bu Metin taþý sahte, gerçeðini bul.") 
		d.setf("catacomb_metin", 8) 
			end 
		 
		when 8038.kill with pc.in_dungeon() and d.getf("catacomb_metin") == 8 begin 
		notice_in_map("Gerçek Metin taþý yokedildi. 4. seviyeye hýzlý bir þekilde devam edelim.") 
			timer("catacomb_labirent", 5) 
			end 
			 
		when catacomb_labirent.timer begin 
		d.setf("level", 4) 
		d.setf("levelcatacomb", 4)
		d.jump_all(3072+70, 12032+585) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat4.txt") 
		notice_in_map("5. seviyeye ulaþmak için labirentte yolunuzu bulun!") 
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
		say("Þeytan ruhlarýný hissedebiliyor musun?") 
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
		notice_in_map("Tartoruslarý yen ve altýncý seviyeye geçebilmek için Surat Totemini ele geçirin.") 
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
		notice_in_map("Uzaklardan ulumalarý duyuluyor. Gaddar Azrail'i uyandýrdýnýz.") 
		item.remove() 
		npc.purge() 
			timer("catacomb_kat_6", 6) 
		end 
		 
		when catacomb_kat_6.timer begin 
		d.setf("level", 6) 
		d.setf("levelcatacomb", 6)
		d.jump_all(3072+1358, 12032+671) 
		d.regen_file("data/dungeon/katakomb/catacomb_kat6.txt") 
		notice_in_map("Kharoon ve diðer tüm düþmanlarý yenin!") 
		end 
		 
		when 2597.kill begin 
		d.kill_all() 
		timer("catacomb_1kharoon", 2) 
		end 
		 
		when catacomb_1kharoon.timer begin 
		say("Kharoon'u öldürdün. Maðaranýn en son") 
		say("seviyesine ýþýnlanýyorsunuz.") 
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
		say("huzur hakim. Þimdi yeryüzüne ýþýnlanacaksýn.") 
			timer("catacomb_azrail", 30) 
		end 
		 
		when catacomb_5dakika.timer begin 
		notice_in_map("Kalan süre: 5 dakika") 
				end 
		 
		when catacomb_10dakika.timer begin 
		notice_in_map("Kalan süre: 10 dakika") 
				end 
		 
		when catacomb_20dakika.timer begin 
		notice_in_map("Kalan süre: 20 dakika") 
				end 
		 
		when catacomb_30dakika.timer begin 
		notice_in_map("Kalan süre: 30 dakika") 
				end 
		 
		when catacomb_45dakika.timer begin 
		notice_in_map("Kalan süre: 45 dakika") 
			d.exit_all() 
				end 
		 
		when catacomb_bitti.timer begin 
		game.set_event_flag("kuleazrail",0) 
		notice_in_map("Süre bitti!") 
			d.exit_all() 
				end 
		 
		when catacomb_azrail.timer begin 
			d.exit_all() 
				end 
	end
end  