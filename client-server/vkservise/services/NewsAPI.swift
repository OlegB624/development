//
//  NewsAPI.swift
//  Vkontakte
//
//  Created by Олег Борель on 13.02.22.
//

import Foundation

final class NewsApi {
    func getNews(completion: @escaping(NewsFeed?)->()) {
            //        func getNews() {
            
            let baseUrl = "https://api.vk.com/method/"
        let token = Session.shared.token;).responseJSON { response in
                print("RESPONSE.DATA: \(String(describing: response.data?.prettyJSON))")
                guard let jsonData = response.data else { return }
                let decoder = JSONDecoder()
                           let json = JSON(jsonData)
                           let dispatchGroup = DispatchGroup()
                let vkItemsJSONArr = json["response"]["itemse"].arrayValue
                            let vkProfilesJSONArr = json["response"]["profiles"].arrayValue
                            let vkGroupsJSONArr = json["response"]["groups"].arrayValue
                var vkItemsArray: [NItem] = []
                            var vkProfilesArray: [NProfile] = []
                            var vkGroupsArray: [NGroup] = []
                            
                            DispatchQueue.global().async(group: dispatchGroup) {
                                for (index, items) in vkItemsJSONArr.enumerated() {
                                                    do {
                                                        let decodeItem = try decoder.decode(NItem.self, from: items.rawData())
                                                                                vkItemsArray.append(decodeItem)
                                                                            } catch(let errorDecode) {
                                                                                print("Item decoding error at index \(index), err: \(errorDecode)")
                                                                            }
                                                                        }
                                                                        print("items")
                                                                    }
                DispatchQueue.global().async(group: dispatchGroup) {
                                for (index, profiles) in vkProfilesJSONArr.enumerated() {
                                    do {
                                        let decodeItem = try decoder.decode(NProfile.self, from: profiles.rawData())
                                                                vkProfilesArray.append(decodeItem)
                                                            } catch(let errorDecode) {
                                                                print("Profile decoding error at index \(index), err: \(errorDecode)")
                                                    DispatchQueue.global().async(group: dispatchGroup) {
                                                        for (index, groups) in vkGroupsJSONArr.enumerated() {
                                                            do {
                                                                let decodeItem = try decoder.decode(NGroup.self, from: groups.rawData())
                                                                                        vkGroupsArray.append(decodeItem)
                                                                                    } catch(let errorDecode) {
                                                                                        print("Group decoding error at index \(index), err: \(errorDecode)")
                                                                                    }
                                                                                }
                                                                                print("groups")
                                                                            }
                                                                dispatchGroup.notify(queue: DispatchQueue.main) {
                                                                    let response = NNewsResponse(
                                                                                        items: vkItemsArray,
                                                                                        profiles: vkProfilesArray,
                                                                                        groups: vkGroupsArray)
                                                                                    let feed = NNewsFeed(response: response)

                                                                                    completion(feed)
                                                                                }
                                                            }
                                }
                }