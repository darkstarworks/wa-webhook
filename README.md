# WhatsApp Webhook


> [!NOTE]
> Replace `<username>` with the <a href="https://admin.alwaysdata.com/site/" target="_parent">[name of your website]</a>
```caddyfile
<username>.alwaysdata.com/webhook
```

***
> [!TIP]
> Create deploy.sh by typing `nano deploy.sh`

```caddyfile
chmod +x webhook/deploy.sh
```

***
> [!NOTE]
> Replace `<gh_name>` with your account name
> 
> Replace `/my-app.git` with the repository name

```abnf
git remote add origin https://github.com/<gh_name>/my-app.git
git push -u origin main
```
