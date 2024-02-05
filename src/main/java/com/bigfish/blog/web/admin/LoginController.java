package com.bigfish.blog.web.admin;

import com.bigfish.blog.po.User;
import com.bigfish.blog.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class LoginController {

    private final UserService userService;

    // コンストラクタインジェクションを使用してUserServiceを注入
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    // ログインページへのGETリクエストを処理
    @GetMapping
    public String loginPage() {

        return "login";  // admin/login.htmlテンプレートを返す
    }

    // ログインフォームのPOSTリクエストを処理
    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        HttpSession session,
                        RedirectAttributes attributes) {

        // UserServiceを使用してユーザーを認証
        User user = userService.checkUser(username, password);
        if (user != null) {
            // ユーザーが認証された場合、セッションにユーザーオブジェクトを保存し、ログイン後のページにリダイレクト
            session.setAttribute("user", user);
            return "loginSucceed";
        } else {
            // ユーザーが認証されなかった場合、エラーメッセージをフラッシュ属性に追加してログインページにリダイレクト
            attributes.addFlashAttribute("message", "ユーザー名またはパスワードが正しくありません");
            return "redirect:/admin";
        }
    }

    // ログアウトのGETリクエストを処理
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // セッションからユーザーオブジェクトを削除してログインページにリダイレクト
        session.removeAttribute("user");
        return "redirect:/admin";
    }
}
