//
//  LoginFormController.swift
//  Vkontakte
//
//  Created by Олег Борель on 2.11.21.
//

import UIKit
import WebKit


class LoginFormController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!{
        didSet {
                    webView.navigationDelegate = self
                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        authorizeToVK()
    }
    func authorizeToVK() {
            var urlComponents = URLComponents()
            urlComponents.scheme = "https"
            urlComponents.host = "oauth.vk.com"
            urlComponents.path = "/authorize"
            urlComponents.queryItems = [
                URLQueryItem(name: "client_id", value: "8028799"),
                URLQueryItem(name: "display", value: "mobile"),
                URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
                URLQueryItem(name: "scope", value: "262150"),
                URLQueryItem(name: "response_type", value: "token"),
                URLQueryItem(name: "revoke", value: "1"),
                URLQueryItem(name: "v", value: "5.68")
            ]

            let request = URLRequest(url: urlComponents.url!)
            webView.load(request)
        }
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {

            guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {

                print(navigationResponse.response.url)
                decisionHandler(.allow)
                return
            }
    let params = fragment
                        .components(separatedBy: "&")
                        .map { $0.components(separatedBy: "=") }
                        .reduce([String: String]()) { result, param in
                                        var dict = result //буфер
                                        let key = param[0]
                                        let value = param[1]
                                        dict[key] = value
                                        return dict
                                }

            guard let token = params["access_token"], let userId = params["user_id"] else { return }

            Session.shared.token = token
            Session.shared.userId = userId

            performSegue(withIdentifier: "showFriendsSegue", sender: nil)

            print(url)

            decisionHandler(.cancel)

        }
}


