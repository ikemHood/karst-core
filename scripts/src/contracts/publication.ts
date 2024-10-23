import tokenbound from "../index";
import {KARST_PUBLICATION_CONTRACT_ADDRESS, PROFILE_ADDRESS_ONE, PROFILE_ADDRESS_TWO} from "../helpers/constants"
import { Call } from "starknet-tokenbound-sdk";

//collect
//upvote
//downvote
//repost
//comment
//post

const execute_post = async() =>{
    let call:Call = {
        to:KARST_PUBLICATION_CONTRACT_ADDRESS,
        selector:"0x70cb483ff70f4401877815e8a7bada80205df630fe0d8157b4e458f4e5114e",
        calldata:[{content_URI: "test post publication...", profile_address: PROFILE_ADDRESS_TWO, channel_id: "0x1"}]
        }
        try {
            const Resp = await tokenbound?.execute(PROFILE_ADDRESS_TWO, [call])
            console.log('execution-response=:', Resp)
        } catch (error) {
            console.log(error)
        }
    
}

const execute_comment = async() =>{
    let call:Call = {
        to:KARST_PUBLICATION_CONTRACT_ADDRESS,
        selector:"0x70cb483ff70f4401877815e8a7bada80205df630fe0d8157b4e458f4e5114e",
        calldata:[{
            content_URI: "test comment publication...", 
            profile_address: PROFILE_ADDRESS_TWO, 
            pointed_profile_address: PROFILE_ADDRESS_ONE, 
            pointed_pub_id: "0x1", 
            reference_pub_type: "0x1"
        }]
        }
        try {
            const Resp = await tokenbound?.execute(PROFILE_ADDRESS_TWO, [call])
            console.log('execution-response=:', Resp)
        } catch (error) {
            console.log(error)
        }
    
}

const execute_repost = async() =>{
    let call:Call = {
        to:KARST_PUBLICATION_CONTRACT_ADDRESS,
        selector:"0x70cb483ff70f4401877815e8a7bada80205df630fe0d8157b4e458f4e5114e",
        calldata:[{
            profile_address: PROFILE_ADDRESS_TWO, 
            pointed_profile_address: PROFILE_ADDRESS_ONE, 
            pointed_pub_id: "0x1", 
        }]
        }
        try {
            const Resp = await tokenbound?.execute(PROFILE_ADDRESS_TWO, [call])
            console.log('execution-response=:', Resp)
        } catch (error) {
            console.log(error)
        }
}

const execute_upvote = async() =>{
    let call:Call = {
        to:KARST_PUBLICATION_CONTRACT_ADDRESS,
        selector:"0x70cb483ff70f4401877815e8a7bada80205df630fe0d8157b4e458f4e5114e",
        calldata:[PROFILE_ADDRESS_TWO, "0x1"]
        }
        try {
            const Resp = await tokenbound?.execute(PROFILE_ADDRESS_TWO, [call])
            console.log('execution-response=:', Resp)
        } catch (error) {
            console.log(error)
        }
}

const execute_downvote = async() =>{
    let call:Call = {
        to:KARST_PUBLICATION_CONTRACT_ADDRESS,
        selector:"0x70cb483ff70f4401877815e8a7bada80205df630fe0d8157b4e458f4e5114e",
        calldata:[PROFILE_ADDRESS_TWO, "0x1"]
        }
        try {
            const Resp = await tokenbound?.execute(PROFILE_ADDRESS_TWO, [call])
            console.log('execution-response=:', Resp)
        } catch (error) {
            console.log(error)
        }
}