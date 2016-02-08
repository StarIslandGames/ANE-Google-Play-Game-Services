package com.freshplanet.ane.AirGooglePlayGames
{
	public class GSPlayerStats
	{
		private var _averageSessionLength:Number;
		private var _churnProbability:Number;
		private var _daysSinceLastPlayed:int;
		private var _numberOfPurchases:int;
		private var _numberOfSessions:int;
		private var _sessionPercentile:Number;
		private var _spendPercentile:Number;
		private var _spendProbability:Number;

		public function get averageSessionLength():Number { return _averageSessionLength; }
		public function get churnProbability():Number { return _churnProbability; }
		public function get daysSinceLastPlayed():int { return _daysSinceLastPlayed; }
		public function get numberOfPurchases():int { return _numberOfPurchases; }
		public function get numberOfSessions():int { return _numberOfSessions; }
		public function get sessionPercentile():Number { return _sessionPercentile; }
		public function get spendPercentile():Number { return _spendPercentile; }
		public function get spendProbability():Number { return _spendProbability; }

		public function GSPlayerStats(averageSessionLength:Number,
									  churnProbability:Number,
									  daysSinceLastPlayed:int,
									  numberOfPurchases:int,
									  numberOfSessions:int,
									  sessionPercentile:Number,
									  spendPercentile:Number,
									  spendProbability:Number)
		{
			_averageSessionLength = averageSessionLength;
			_churnProbability = churnProbability;
			_daysSinceLastPlayed = daysSinceLastPlayed;
			_numberOfPurchases = numberOfPurchases;
			_numberOfSessions = numberOfSessions;
			_sessionPercentile = sessionPercentile;
			_spendPercentile = spendPercentile;
			_spendProbability = spendProbability;
		}

		public static function fromJSONObject( jsonObject:Object ):GSPlayerStats {
			if( !jsonObject ) {
				return null;
			}
			return new GSPlayerStats(
				jsonObject.averageSessionLength,
				jsonObject.churnProbability,
				jsonObject.daysSinceLastPlayed,
				jsonObject.numberOfPurchases,
				jsonObject.numberOfSessions,
				jsonObject.sessionPercentile,
				jsonObject.spendPercentile,
				jsonObject.spendProbability
			);
		}

	}
}