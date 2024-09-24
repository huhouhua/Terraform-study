resource "helm_release" "argo_cd" {
    depends_on = [module.k3s] // 依赖k3s模块,执行完才会安装argo-cd
    name = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    namespace = "argocd"
    create_namespace = true
}