package battle
{
	import supportRPG.assets.battle.skillBar_mc;

	public class SkillBar
	{
		private var _assets:skillBar_mc;
		
		private var _mpBar:Bar;
		private var _skills:Vector.<SkillButton>;
		
		public function SkillBar(assets:skillBar_mc)
		{
			_assets = assets;
			_mpBar = new Bar(_assets.mpBar);
			_skills = Vector.<SkillButton>([
				new SkillButton(_assets.skill1),
				new SkillButton(_assets.skill2),
				new SkillButton(_assets.skill3),
				new SkillButton(_assets.skill4),
				new SkillButton(_assets.skill5)
			]);
		}
	}
}