import React from 'react';
import TeamCard from '../components/TeamCard';


const Teams: React.FC<{teams: any[]} & {getTeams: any}> = ({teams, getTeams}) => {
  const [data, dataSet] = React.useState<any>([])

  React.useEffect(() => {
  }, [teams]);

  // waiting for data to come back from api call before use
  React.useEffect(() => {
    const fetchData = async  () => {
      const result = await getTeams().then()
      dataSet(result)
    }
    fetchData()
  }, [])

  return (
    <>
      {data.map(team =>
        <TeamCard key={team.id} teamName={team.team_name} captainFirst={ team.captain_first} captainLast={ team.captain_last} />
      )}
    </>
  );
}

export default Teams;
