package com.freshplanet.ane.AirGooglePlayGames
{
	import flash.events.Event;

	public class AirGooglePlayGamesPlayerStatsEvent extends Event
	{
		
		public static const PLAYER_STATS_LOADED:String = "AirGooglePlayGamesPlayerStatsEvent.player_stats_loaded";

		public var stats:GSPlayerStats;
		
		public function AirGooglePlayGamesPlayerStatsEvent( type:String, stats:GSPlayerStats )
		{
			super( type );
			this.stats = stats;
		}
		
	}
}