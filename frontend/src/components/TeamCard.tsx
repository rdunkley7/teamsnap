import React from 'react';
import {
  Link
} from "react-router-dom";

interface Props {
  teamName: String,
  captainFirst: String,
  captainLast: String,
}

const TeamCard: React.FC<Props> = ({teamName, captainFirst, captainLast}) => {

  return (
    <div className="card">
      <h4>{teamName}</h4>
        <p>Team Captain: {captainFirst} {captainLast}</p>
      <Link to="/join">Register your team</Link>
    </div>
  );
}

export default TeamCard;
