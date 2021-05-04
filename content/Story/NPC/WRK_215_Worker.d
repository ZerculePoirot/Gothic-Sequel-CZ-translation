// ---------------------------------------------------------
// NPC 'WRK_215_Worker'
// ---------------------------------------------------------

instance WRK_215_Worker		(C_NPC)
{


		//-------- primary data --------
		name								=	NAME_Worker;
		guild								=	GIL_WORKER;
		npctype								=	NPCTYPE_AMBIENT;
		level								=	8;
		voice								=	11;
		id									=	215;

		//-------- attributes ----------
		attribute [ATR_STRENGTH]			=	50;
		attribute [ATR_DEXTERITY]			=	50;
		attribute [ATR_MANA_MAX]			=	0;
		attribute [ATR_MANA]				=	0;
		attribute [ATR_HITPOINTS_MAX]		=	100;
		attribute [ATR_HITPOINTS]			=	100;
		attribute [ATR_REGENERATEMANA]		=	0;
		attribute [ATR_REGENERATEHP]		=	0;

		//-------- protection ----------
		protection [PROT_EDGE]				=	0;
		protection [PROT_BLUNT]				=	0;
		protection [PROT_POINT]				=	0;
		protection [PROT_FIRE]				=	0;
		protection [PROT_MAGIC]				=	0;

		protection [PROT_FALL]				=	0;
		protection [PROT_FLY]				=	0;
		protection [PROT_BARRIER]			=	0;

		//-------- visuals -------------
		Mdl_SetVisual						(self, "humans.mds"); 					// basic animation file
		Mdl_ApplyOverlayMds					(self, "Humans_Tired.mds"); 			// overlay animation file
		Mdl_SetVisualBody					(self, "hum_body_naked0", 2, 1, "Hum_Head_Bald", 71, 4, VLK_ARMOR_L);
		B_Scale								(self); 								//auto-matching scale with strength
		Mdl_SetModelFatness					(self,  0);

		//-------- talents -------------
		Npc_SetTalentSkill					(self, NPC_TALENT_1H,  1);

		//-------- inventory -----------
		CreateInvItem						(self, ItFo_Beer);
		CreateInvItems						(self, ItMi_Silver,  1);
		CreateInvItems						(self, ItFo_Cheese,  2);

		EquipItem							(self, ItMw_Nailmace);

		//-------- ai ------------------
		fight_tactic						=	FAI_HUMAN_COWARD;
		daily_routine						=	Rtn_start_215;
		senses_range						=	2000;
		senses								=	SENSE_HEAR | SENSE_SEE;



};

// ---------------------------------------------------------
// daily routines
// ---------------------------------------------------------

func void Rtn_start_215		()
{
		TA_StoneMason						(08, 00, 12, 00, "OCR_STONE_03");
		TA_SitCampfire						(12, 00, 15, 00, "OCR_CAMPFIRE_A_MOVEMENT1");
		TA_StoneMason						(15, 00, 18, 00, "OCR_STONE_03");
		TA_SitCampfire						(18, 00, 00, 00, "OCR_CAMPFIRE_A_MOVEMENT1");
		TA_Sleep							(00, 00, 08, 00, "OCR_HUT_6_A");
};


