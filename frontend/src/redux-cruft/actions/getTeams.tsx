import { update } from "./update"
import React from "react";
import API from "../../api";

export const getTeams = (params) => (dispatch) => {
    // TODO: Brad said to get this data from the API BUT THE API DOESNT EXIST YET
    // I NEED TO COME BACK AND FILL THIS IN ONCE THE API EXISTS

    return new Promise(function (resolve, reject) {
        API.getData('http://backend.localhost:8080/teams')
            .then((data) => {
                resolve(data)
            }).catch(err => console.log(err))
    })
}
