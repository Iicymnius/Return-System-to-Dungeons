//find;

void CDungeon::Initialize()
{
	[...]
}

//add below;

struct FWarpToLicyDungeonCoords
{
	FWarpToLicyDungeonCoords(long lMapIndex, long X, long Y, LPDUNGEON d)
	: m_lMapIndex(lMapIndex), m_x(X), m_y(Y), m_pkDungeon(d)
	{
	}

	void operator () (LPCHARACTER ch)
	{
		ch->SaveExitLocation();
		ch->WarpSet(m_x, m_y, m_lMapIndex);
	}

	long m_lMapIndex;
	long m_x;
	long m_y;
	LPDUNGEON m_pkDungeon;
};

void CDungeon::Join_Coords(LPCHARACTER ch, long X, long Y, long index)
{
	if (SECTREE_MANAGER::instance().GetMap(m_lMapIndex) == NULL)
	{
		sys_err("CDungeon: SECTREE_MAP not found for [HASH=46671]#%ld[/HASH]", m_lMapIndex);
		return;
	}
	X*=100;
	Y*=100;
	FWarpToLicyDungeonCoords(m_lMapIndex, X, Y, this) (ch);
}

void CDungeon::JoinParty_Coords(LPPARTY pParty, long X, long Y, long index)
{
	pParty->SetDungeon(this);
	m_map_pkParty.insert(std::make_pair(pParty,0));

	if (SECTREE_MANAGER::instance().GetMap(m_lMapIndex) == NULL)
	{
		sys_err("CDungeon: SECTREE_MAP not found for [HASH=46671]#%ld[/HASH]", m_lMapIndex);
		return;
	}
	X*=100;
	Y*=100;
	FWarpToLicyDungeonCoords f(m_lMapIndex, X, Y, this);
	pParty->ForEachOnMapMember(f,index);
}

//find again;

		deadEvent = event_create(dungeon_dead_event, info, PASSES_PER_SEC(10));

//change;

		deadEvent = event_create(dungeon_dead_event, info, PASSES_PER_SEC(300));