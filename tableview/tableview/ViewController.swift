import UIKit

 //UITableViewDelegate,UITableViewDataSourceをクラスに追加

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    let screenWidth = Int(UIScreen.main.bounds.size.width)
    let screenHeight = Int(UIScreen.main.bounds.size.height)
    var sampleTableView: UITableView  =   UITableView()
    var exampleArray: [String] = ["ユーザー名の変更", "パスワードの変更", "デバイスの設定" ,"色温度の変更" , "プライバシーポリシー", "お問い合わせ", "ログアウト"]
    var selectedItme = ""
    
    override func viewDidLoad() {

        super.viewDidLoad()

        sampleTableView.frame = CGRect(x:screenWidth * 0/100, y:screenHeight * 10/100, width:screenWidth * 100/100, height:screenHeight * 80/100)

        sampleTableView.delegate = self
        sampleTableView.dataSource = self

        sampleTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")


        self.view.addSubview(sampleTableView)

        self.sampleTableView.rowHeight = 100

        sampleTableView.separatorColor = UIColor.black

        // remove the separator between cell and cell

        //sampleTableView.separatorStyle = UITableViewCell.SeparatorStyle.none

        

        }
    //セクション数を指定
    func numberOfSections(in sampleTableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ sampleTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleArray.count
    }

    //cellのコンテンツ

    func tableView(_ sampleTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = exampleArray[indexPath.row]
        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) is selected")
        tableView.deselectRow(at: indexPath, animated: true)
        selectedItme = exampleArray[indexPath.row]
        performSegue(withIdentifier: "toSubViewController", sender: nil)
    }

    func tableView(_ sampleTableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {

        let deleteButton: UITableViewRowAction = UITableViewRowAction(style: .normal, title: "削除") { (action, index) -> Void in

            self.exampleArray.remove(at: indexPath.row)
            sampleTableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        deleteButton.backgroundColor = UIColor.red
        return [deleteButton]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toSubViewController") {
            let subVC: SubViewController = (segue.destination as? SubViewController)!
            subVC.selectedTitle = selectedItme
        }
    }

}
