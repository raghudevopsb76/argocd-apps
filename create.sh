for i in *.yaml ;do
  argocd app create --upsert $(echo $i | sed -e 's/.yaml//') --file=$i
done

