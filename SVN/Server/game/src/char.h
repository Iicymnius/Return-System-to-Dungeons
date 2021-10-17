//find;

	BYTE			skill_group;

//add below;

	long			d_map_index;

//find again;

};

ESex GET_SEX(LPCHARACTER ch);

//add above;

public:
	long	LicyPlayerDungeonIndex() { return m_points.d_map_index; }
	void	MniusPlayerDungeonIndex(long vnum) { m_points.d_map_index = vnum; }
