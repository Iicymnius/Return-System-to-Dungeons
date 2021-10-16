//find;

		"horse_skill_point = %d, "

//add below;

		"d_map_index = %d, "

//find again;

		pkTab->horse_skill_point);

//change;

		pkTab->horse_skill_point,
		pkTab->d_map_index);

//find again;

,horse_skill_point

//continue;

,d_map_index

//find again;

	str_to_number(pkTab->horse_skill_point, row[col++]);

//add below;

	str_to_number(pkTab->d_map_index, row[col++]);