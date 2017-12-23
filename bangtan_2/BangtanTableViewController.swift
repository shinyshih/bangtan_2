//
//  BangtanTableViewController.swift
//  bangtan_2
//
//  Created by 施馨檸 on 11/12/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class BangtanTableViewController: UITableViewController {
    
    var bts = [Member]()
    struct Keys {
        static let members = "members"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        bts = [Member(name: "Jin", image: "jin", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/17yl/1-l/5-ly-l-jin.jpg", info: "Jin\n本名：金碩珍 / 김석진 / Kim Seok Jin\n生日：1992年12月04日\n身高：179cm(官方)\n體重：63kg(官方)\n血型：O型\n星座：射手座\n學歷：建國大學演劇電影系\n職位：副唱、門面擔當"),
               Member(name: "Suga", image: "suga", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/17yl/1-l/2-ly-l-suga.jpg", info: "Suga\n本名：閔玧其 / 민윤기 / Min Yun Ki\n生日：1993年03月09日\n身高：174cm(官方)\n體重：59kg(官方)\n血型：O型\n星座：雙魚座\n學歷：全球網路大學放送演藝學系\n職位：領Rapper"),
               Member(name: "J-Hope", image: "jhope", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/l1459yve/e-04/le-6-jhope.jpg", info: "J-Hope\n本名：鄭號錫 / 정호석 / Jung Ho Seok\n生日：1994年02月18日\n身高：177cm(官方)\n體重：65kg(官方)\n血型：A型\n星座：水瓶座\n學歷：全球網路大學放送演藝學系\n職位：副Rapper、主領舞"),
               Member(name: "RM", image: "rm", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/17yl/1-l/4-ly-l-rm.jpg", info: "RM\n本名：金南俊 / 김남준 / Kim Nam Jun\n生日：1994年09月12日\n身\n職位：隊長、主Rapper"),
               Member(name: "Jimin", image: "jm", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/17yl/1-l/7-ly-l-jm.jpg", info: "Jimin\n本名：朴智旻 / 박지민 / Park Ji Min\n生日：1995年10月13日\n身高：173cm(官方)\n體重：61kg(官方)\n血型：A型\n星座：天秤座\n學歷：全球網路大學放送演藝學系\n職位：領唱、領舞、魅力擔當"),
               Member(name: "V", image: "v", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/17yl/1-l/1-ly-l-v.jpg", info: "V\n本名：金泰亨 / 김태형 / Kim Tae Hyoung\n生日：1995年12月30日\n身高：178cm(官方)\n體重：62kg(官方)\n血型：AB型\n星座：摩羯座\n學歷：全球網路大學放送演藝學系\n職位：副唱、形象擔當"),
               Member(name: "JungKook", image: "jk", url: "https://s3-ap-northeast-1.amazonaws.com/ibighit/bts/loveyourself/photo/l1459yve/e-04/le-3-jk.jpg", info: "Jung Kook\n本名：田柾國 / 전정\n血型：A型\n星座：處女座\n學歷：首爾公演藝術高中 實用音樂科(畢業)\n職位：主唱、領舞、副Rapper、忙內")]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Keys.members, for: indexPath) as? BangtanTableViewCell else {
            fatalError()
        }

        let memberInfo = bts[indexPath.row]
        
        cell.memberImageView.image = UIImage(named: memberInfo.image)
        cell.memberNameLabel.text = memberInfo.name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow
        controller.detailImageUrl = bts[(indexPath?.row)!].url
        controller.info = bts[(indexPath?.row)!].info
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
 

}
