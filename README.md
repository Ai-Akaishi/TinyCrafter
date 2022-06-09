# TinyCrafter
(Minecraft 1.18+)Datapack to enable custom crafting using an axolotl bucket in a bundle.  
バンドルにウーパールーパー入りバケツを入れるとカスタムレシピのクラフトができちゃうデータパック。

## 動作確認済みバージョン / Verified minecraft versions

- 1.19
- 1.18.x

## 依存ライブラリ / Dependencies

- TinyCrafter  
  - [PlayerItemTuner](https://github.com/Ai-Akaishi/PlayerItemTuner)
  - [PrettyCrafter](https://github.com/Ai-Akaishi/PrettyCrafter)  
    - [AiMath](https://github.com/Ai-Akaishi/AiMath)

## 使い方 / How To Use

### 準備 / Prepare

ワールドデータのdatapacksに入れてね。  
Put this in the datapacks folder of your world data.  
サーバーリソースパックにも適用してね。サーバーリソースパックとして適用させない場合は、個別にリソースパックとして入れてもらってね。  
Apply this to the server resource pack as well. If you don't want to apply it as a server resource pack, ask each player to include it as a resource pack.  

### クラフターにする / Get TinyCrafter

ウーパールーパー入りバケツをバンドルに入れることでカスタムクラフターになります。  
When you put an axolotl bucket into a bundle, it turns into a custom crafting table.  
  
それをインベントリの３段目までに配置すると、クラフトグリッドが表示されます。  
Place it on the third level of your inventory, then the crafting grid will appear.  

### クラフトする / Let's Craft!
  
クラフトグリッドにアイテムを並べてバンドルを右クリックするとクラフトできるよ！  
※カスタムレシピが追加されている必要があります。  
Line up the items in the crafting grid and right-click on the bundle to craft it!  
Note: Custom recipes must be added.

## レシピ追加の仕方 / How To Add Recipes

TinyCrafter\data\tiny_crafter\functions\templatesにサンプルがあります！  
詳しくは[PrettyCrafter](https://github.com/Ai-Akaishi/PrettyCrafter)のreadmeを見てね！  
単純なレシピを簡単に生成したい場合はPrettyCrafterの#pretty_crafter:generateを使ってね！

## Spigotについて / About Spigot

Spigotの場合も使えますが、少し挙動が変わります。  
毎回ウーパールーパー入りバケツが出てきてしまいます。きっと少し窮屈なのね。  
You can also use this in Spigot, but it behaves a little differently.  
Every time you use it, the axolotl bucket comes out. It is maybe a little cramped.  

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
